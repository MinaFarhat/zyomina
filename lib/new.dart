// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class New extends StatefulWidget {
  const New({super.key});

  @override
  State<New> createState() => _NewState();
}

class _NewState extends State<New> {
  List<String> mylist = [
    "WOMAN",
    "MEN",
    "BAGS & ACCESSORIES",
    "BAGS & ACCESSORIES",
    "BAGS & ACCESSORIES"
  ];
  int selectText = 0;
  List d = [
    {"price": "US\$2.00", "image": "assets/h.jpg"},
    {"price": "US\$3.00", "image": "assets/m1(1).jpg"},
    {"price": "US\$4.00", "image": "assets/m1(2).jpg"},
    {"price": "US\$5.00", "image": "assets/m1(3).jpg"},
    {"price": "US\$6.00", "image": "assets/m1(1).jpg"},
    {"price": "US\$7.00", "image": "assets/m1(2).jpg"},
    {"price": "US\$8.00", "image": "assets/m1(3).jpg"},
    {"price": "US\$9.00", "image": "assets/h.jpg"},
    {"price": "US\$10.00", "image": "assets/h.jpg"},
    {"price": "US\$11.00", "image": "assets/h.jpg"},
  ];
  bool t=false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.6 - 25,
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.5,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                "assets/m1(3).jpg",
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height * 0.5,
                          color: Colors.black.withOpacity(0.5),
                        ),
                        header(context),
                        Positioned(
                          bottom: MediaQuery.of(context).size.height * 0.2,
                          right: MediaQuery.of(context).size.width * 0.2,
                          child: const Center(
                            child: Text(
                              "New Collection",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height * 0.06,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        itemBuilder: (context, index) {
                          return GestureDetector(
                            onTap: () {
                              setState(() {
                                selectText = index;
                                print(index);
                              });
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 7),
                              child: Row(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width * 0.3,
                                    height: 50,
                                    decoration: BoxDecoration(
                                      color: selectText == index
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                    child: Center(
                                      child: Text(
                                        mylist[index],
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: selectText == index
                                              ? Colors.black
                                              : Colors.white,
                                          fontSize: 14,
                                        ),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        itemCount: mylist.length,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                height: MediaQuery.of(context).size.width * 0.6,
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 6,
                      mainAxisSpacing: 0.5,
                      childAspectRatio: 0.5),
                  shrinkWrap: true,
                  itemCount: d.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index) {
                    print(d[index]["image"]);
                    return SizedBox(
                      width: MediaQuery.of(context).size.width * 0.5,
                      child: detail(index),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget detail(int index) {
    
    print(d[index]["image"]);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(
                      d[index]["image"],
                    ),
                    fit: BoxFit.cover,
                  )),
              height: MediaQuery.of(context).size.height * 0.2,
              width: MediaQuery.of(context).size.height * 0.15,
            ),
            Positioned(
              bottom: 10,
              right: 10,
                child: GestureDetector(
                  onTap: (){
                    if(t==false){
                      setState(() {
                        t=true;
                      });
                    }
                    else{
                     setState(() {
                        t=false;
                     });
                    }
                  },
              child: CircleAvatar(
                radius: 13,
                backgroundColor: Colors.grey.shade200,
                child: Center(
                  child:t==false? const Icon(
                    Icons.favorite_border,
                    color: Colors.black,
                  ):const Icon(
                    Icons.favorite,
                    color: Colors.black,
                  )
                ),
              ),
            ))
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          d[index]["price"],
          style: const TextStyle(color: Colors.white, fontSize: 14),
        ),
      ],
    );
  }

  Widget header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(
                Icons.mail_outline_rounded,
                size: 27,
                color: Colors.white,
              ),
              const Icon(
                Icons.favorite_border_rounded,
                size: 27,
                color: Colors.white,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.66,
                height: 50,
                child: TextFormField(
                   textAlignVertical: TextAlignVertical.center,
                  cursorHeight: 25,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white.withOpacity(0.3),
                    hintText: "Search",
                    hintStyle: const TextStyle(color: Colors.white, fontSize: 14),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Icon(
                Icons.shopping_bag_outlined,
                size: 27,
                color: Colors.white,
              )
            ],
          ),
        ],
      ),
    );
  }
}
