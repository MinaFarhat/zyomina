import 'package:flutter/material.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({super.key});

  @override
  State<Wishlist> createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  bool t=false;
  List mina = [
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
    {
      "price": "US\$2.00",
      "image": "assets/h.jpg",
      "d": "Crop Top Dragon Totem Prrint LETTERS DESIGN "
    },
  ];
  int choosen = 0;
  int tfaal = 0;
  int tfaal1 = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                "Wish List",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 19,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            Expanded(
              child: GridView.builder(
                itemCount: mina.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 0,
                  mainAxisSpacing: 10,
                  childAspectRatio: 0.6,
                ),
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return wish(index);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget wish(int index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        //mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(mina[index]["image"]),
                    fit: BoxFit.cover,
                  ),
                ),
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
            height: 15,
          ),
          Text(
            mina[index]["price"],
            style: const TextStyle(color: Colors.white, fontSize: 17,fontWeight: FontWeight.w500),
          ),
            const SizedBox(
            height: 10,
          ),
          Text(
            mina[index]["d"],
            style: const TextStyle(color: Colors.white, fontSize: 10),
          ),
         const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              InkWell(
                onTap: () {
                  setState(() {
                    choosen = 0;
                  });
                },
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: choosen == 0
                          ? Border.all(width: 2, color: Colors.white)
                          : Border.all(width: 2, color: Colors.black)),
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade900,
                    radius: choosen == 0 ? 14 : 12,
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              InkWell(
                onTap: () {
                  setState(() {
                    choosen = 1;
                  });
                },
                overlayColor: WidgetStateProperty.all(Colors.transparent),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: choosen == 1
                          ? Border.all(width: 2, color: Colors.white)
                          : Border.all(width: 2, color: Colors.black)),
                  child: CircleAvatar(
                    backgroundColor: Colors.blue.shade900,
                    radius: choosen == 1 ? 14 : 12,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
