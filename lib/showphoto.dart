// ignore_for_file: deprecated_member_use, avoid_print

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:zyo/detailsofphoto.dart';
import 'package:zyo/shoppingbug.dart';

class Showphoto extends StatefulWidget {
  // ignore: prefer_const_constructors_in_immutables
  Showphoto({super.key});

  @override
  State<Showphoto> createState() => _ShowphotoState();
}

class _ShowphotoState extends State<Showphoto> {
  List img = [
    "assets/h.jpg",
    "assets/facebook.png",
    "assets/Facebook1.png",
    "assets/google.png",
    "assets/instagram.png",
    "assets/instagram1.jpg",
    "assets/m1(1).jpg",
    "assets/m1(2).jpg",
    "assets/m1(3).jpg"
  ];
  bool s1 = false;

  bool s2 = false;

  bool s3 = false;

  bool s4 = false;

  bool heart = false;
  int x = 0;
  int selectindex = 0;
  //CarouselController controller = CarouselController();
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                  const Text(
                    "ZYO",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  InkWell(
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return const Shoppingbug();
                      }));
                    },
                    child: const Icon(
                      Icons.shopping_bag_outlined,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                InkWell(
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                  onTap: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return Details(img[selectindex]);
                    }));
                  },
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.7,
                    child: Stack(
                      children: [
                        CarouselSlider(
                          //carouselController: controller,
                          items: img.map((imageurl) {
                            return Container(
                              width: MediaQuery.of(context).size.width,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    imageurl,
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            );
                          }).toList(),
                          options: CarouselOptions(
                            enableInfiniteScroll: false,
                            viewportFraction: 1,
                            height: MediaQuery.of(context).size.height,
                            autoPlay: false,
                            onPageChanged: (index, _) {
                              print(index);
                              setState(() {
                                selectindex = index;
                              });
                            },
                          ),
                        ),
                        Positioned(
                          bottom: 13,
                          right: 20,
                          child: InkWell(
                            onTap: () {
                              if (heart == false) {
                                setState(() {
                                  heart = true;
                                });
                              } else {
                                setState(() {
                                  heart = false;
                                });
                              }
                            },
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            child: Container(
                              width: 70,
                              height: 35,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                color: Colors.white70,
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  heart == false
                                      ? const Center(
                                          child: Icon(
                                            Icons.favorite_border,
                                            color: Colors.black,
                                            size: 32,
                                          ),
                                        )
                                      : const Center(
                                          child: Icon(
                                            Icons.favorite,
                                            color: Colors.black,
                                            size: 32,
                                          ),
                                        ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    heart == false
                                        ? x.toString()
                                        : (x + 1).toString(),
                                    style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 13,
                          right: 180,
                          child: Container(
                            width: 65,
                            height: 22,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(28),
                              color: Colors.grey.shade500,
                            ),
                            child: Center(
                              child: Text(
                                ("${selectindex + 1}/${img.length}").toString(),
                                style: const TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 7),
                      child: Text(
                        "CROP TOP DRAGON TOTEM PRINT LETTERS DESIGN",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: InkWell(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.share,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 7),
                      child: Row(
                        children: [
                          const Text(
                            "US\$9.00",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Text(
                            "US\$19.00",
                            style: TextStyle(
                              color: Colors.grey.shade700,
                              fontSize: 13,
                              decoration: TextDecoration.lineThrough,
                              decorationColor: Colors.grey.shade400,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children: [
                          InkWell(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            onTap: () {
                              if (s1 == false) {
                                setState(() {
                                  s1 = true;
                                  s2 = false;
                                  s3 = false;
                                  s4 = false;
                                });
                              } else {
                                setState(() {
                                  s1 = false;
                                  s2 = false;
                                  s3 = false;
                                  s4 = false;
                                });
                              }
                            },
                            child: s1 == true
                                ? const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                  ),
                          ),
                          InkWell(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            onTap: () {
                              if (s2 == false) {
                                setState(() {
                                  s1 = true;
                                  s2 = true;
                                  s3 = false;
                                  s4 = false;
                                });
                              } else {
                                setState(() {
                                  s2 = false;
                                  s3 = false;
                                  s4 = false;
                                });
                              }
                            },
                            child: s2 == true
                                ? const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                  ),
                          ),
                          InkWell(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            onTap: () {
                              if (s3 == false) {
                                setState(() {
                                  s1 = true;
                                  s2 = true;
                                  s3 = true;
                                  s4 = false;
                                });
                              } else {
                                setState(() {
                                  s3 = false;
                                  s4 = false;
                                });
                              }
                            },
                            child: s3 == true
                                ? const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                  ),
                          ),
                          InkWell(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent),
                            onTap: () {
                              if (s4 == false) {
                                setState(() {
                                  s1 = true;
                                  s2 = true;
                                  s3 = true;
                                  s4 = true;
                                });
                              } else {
                                setState(() {
                                  s4 = false;
                                });
                              }
                            },
                            child: s4 == true
                                ? const Icon(
                                    Icons.star,
                                    color: Colors.white,
                                  )
                                : const Icon(
                                    Icons.star_border,
                                    color: Colors.white,
                                  ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
