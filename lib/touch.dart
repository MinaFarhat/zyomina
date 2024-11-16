// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:zyo/searchscreen.dart';
import 'package:zyo/showphoto.dart';

class Touch extends StatefulWidget {
  const Touch({super.key});

  @override
  State<Touch> createState() => _TouchState();
}

class _TouchState extends State<Touch> {
  int choosen = 0;
  int tfaal = 0;
  int tfaal1 = 0;
  Widget choose() {
    return Row(
      children: [
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.29,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context){
                          return Showphoto();
                        }));
                      },
                      child: Image.asset(
                        "assets/m1(2).jpg",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 95,
                    right: 17,
                    child: InkWell(
                      onTap: () {
                        if (tfaal == 0) {
                          setState(() {
                            tfaal = 1;
                          });
                        } else {
                          setState(() {
                            tfaal = 0;
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(28),
                          color: Colors.grey.shade300,
                        ),
                        width: 26,
                        height: 26,
                        child: Center(
                          child: tfaal == 1
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.favorite_outline_rounded,
                                  color: Colors.black,
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "US\$2.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Text(
                      "Crop Top Dragon Totem Prrint LETTERS DESIGN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        setState(() {
                          choosen = 0;
                        });
                      },
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
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
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
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
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.29,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(28),
          ),
          child: Column(
            children: [
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap: () {},
                      child: Image.asset(
                        "assets/m1(2).jpg",
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                  Positioned(
                    top: 95,
                    right: 17,
                    child: InkWell(
                      onTap: () {
                        if (tfaal1 == 0) {
                          setState(() {
                            tfaal1 = 1;
                          });
                        } else {
                          setState(() {
                            tfaal1 = 0;
                          });
                        }
                      },
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(28),
                            color: Colors.grey.shade300),
                        width: 26,
                        height: 26,
                        child: Center(
                          child: tfaal1 == 1
                              ? const Icon(
                                  Icons.favorite,
                                  color: Colors.black,
                                )
                              : const Icon(
                                  Icons.favorite_outline_rounded,
                                  color: Colors.black,
                                ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "US\$2.00",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ],
                    ),
                    Text(
                      "Crop Top Dragon Totem Prrint LETTERS DESIGN",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            const SizedBox(height: 15,),
            Padding(
             padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 5),
              child: Row(
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
                  const SizedBox(
                    width: 15,
                  ),
                  const Text(
                    "Dresses",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          child: const Icon(
                            Icons.list,
                            color: Colors.white,
                            size: 27,
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.of(context)
                                .push(MaterialPageRoute(builder: (context) {
                              return const Search();
                            }));
                          },
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          child: const Icon(
                            Icons.search,
                            color: Colors.white,
                            size: 27,
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        InkWell(
                          onTap: () {},
                          overlayColor:
                              MaterialStateProperty.all(Colors.transparent),
                          child: const Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                            size: 27,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            const Divider(
              color: Colors.white,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: ((context, index) {
                  return choose();
                }),
                itemCount: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
