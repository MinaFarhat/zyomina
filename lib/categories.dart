import 'package:flutter/material.dart';
import 'package:zyo/head.dart';
import 'package:zyo/product.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<Product> products = <Product>[
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(2).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
    Product("title", "assets/m1(1).jpg"),
  ];
  List<String> oplist = [
    "JUST FOR YOU",
    "NEW IN",
    "TRENDS",
    "12.12 SALE",
    "DRESSES",
    "JACKETS",
    "SHORTS",
    "SKIRTS",
    "ATHLEISURE WOMEN",
    "SLEEP & LOUNGE",
  ];
  int chindex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 15,
              ),
              header(context),
              const Head(),
              Row(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.26,
                    child: ListView.builder(
                      itemCount: oplist.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              chindex = index;
                            });
                          },
                          child: Container(
                            height: 60,
                            color:
                                chindex == index ? Colors.white : Colors.black,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                  textAlign: TextAlign.left,
                                  softWrap: true,
                                  oplist[index],
                                  style: TextStyle(
                                    color: chindex == index
                                        ? Colors.black
                                        : Colors.white,
                                    fontSize: 13,
                                    fontWeight: FontWeight.w700,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.7,
                    width: MediaQuery.of(context).size.width * 0.7,
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          childAspectRatio: 4 / 6,
                          mainAxisSpacing: 10,
                          crossAxisSpacing: 10,
                          crossAxisCount: 3),
                      itemCount: products.length,
                      itemBuilder: (context, index) {
                        return SizedBox(
                          child: Column(
                            children: [
                              Expanded(
                                flex: 2,
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.25,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8),
                                    image: DecorationImage(
                                      image: AssetImage(products[index].img),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Expanded(
                                flex: 1,
                                child: Text(
                                  products[index].title,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
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
                  cursorHeight: 25,
                  cursorColor: Colors.black,
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    focusColor: Colors.black,
                    filled: true,
                    fillColor: Colors.white,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey[400],
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
