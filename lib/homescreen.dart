import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:zyo/categories.dart';
import 'package:zyo/custom_nav_bar.dart';
import 'package:zyo/global.dart';
import 'package:zyo/head.dart';
import 'package:zyo/new.dart';
import 'package:zyo/product.dart';
import 'package:zyo/settings.dart';
import 'package:zyo/touch.dart';
import 'package:zyo/wish_list.dart';

import 'searchscreen.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  CarouselController _controller = CarouselController();
  ScrollController _scrollController = ScrollController();

  List<String> imglist = [
    "assets/m1(1).jpg",
    "assets/m1(2).jpg",
    "assets/m1(3).jpg"
  ];

  int selectedPage = 0;
  int selecticon = 0;

  Widget gettext(String text) {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  text,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Container(
                  width: 20,
                  height: 13,
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      "OFF",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 8,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Text(
              "ON ORDERS OF US\$90+",
              style: TextStyle(
                fontSize: 8,
                color: Colors.grey.shade500,
              ),
            ),
          ],
        )
      ],
    );
  }

  List<Icon> iconlist = [
    Icon(
      Icons.dry_cleaning_rounded,
      size: 60,
      color: Colors.black,
    ),
    Icon(
      Icons.dry_cleaning_rounded,
      size: 60,
      color: Colors.black,
    ),
    Icon(
      Icons.dry_cleaning_rounded,
      size: 60,
      color: Colors.black,
    ),
    Icon(
      Icons.dry_cleaning_rounded,
      size: 60,
      color: Colors.black,
    ),
    Icon(
      Icons.dry_cleaning_rounded,
      size: 60,
      color: Colors.black,
    ),
    Icon(
      Icons.dry_cleaning_rounded,
      size: 60,
      color: Colors.black,
    ),
    Icon(
      Icons.dry_cleaning_rounded,
      size: 60,
      color: Colors.black,
    ),
    Icon(
      Icons.dry_cleaning_rounded,
      size: 60,
      color: Colors.black,
    ),
  ];

  Icon testIcon() {
    return Icon(
      Icons.dry_cleaning_rounded,
      size: 60,
      color: Colors.black,
    );
  }

  List<ForIcon> forIcons = [
    ForIcon(
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        )),
    ForIcon(
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        )),
    ForIcon(
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        )),
    ForIcon(
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        Icon(
          Icons.dry_cleaning_rounded,
          size: 60,
          color: Colors.black,
        ),
        null),
  ];
 
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(height: 15,),
            header(context),
            Head(),
            Column(
              children: [
                Stack(
                  children: [
                    CarouselSlider(
                      carouselController: _controller,
                      items: imglist.map((imageurl) {
                        return Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(
                                    imageurl,
                                  ),
                                  fit: BoxFit.cover)),
                          width: MediaQuery.of(context).size.width,
                          height: double.infinity,
                          margin: EdgeInsets.symmetric(horizontal: 10),
                        );
                      }).toList(),
                      options: CarouselOptions(
                        viewportFraction: 1,
                        height: 150,
                        autoPlay: true,
                        onPageChanged: (index, _) {
                          print(index);
                          setState(() {
                            selectedPage = index;
                          });
                          // pageController.jumpToPage(index);
                        },
                        autoPlayAnimationDuration: Duration(seconds: 1),
                      ),
                    ),
                    Positioned(
                      bottom: 10,
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Center(
                          child: Container(
                            width: 80,
                            height: 20,
                            child: ListView.builder(
                                scrollDirection: Axis.horizontal,
                                itemCount: imglist.length,
                                itemBuilder: (context, index) {
                                  return Center(
                                    child: Container(
                                      margin: EdgeInsets.symmetric(horizontal: 3),
                                      width: 10,
                                      height: 10,
                                      decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: selectedPage == index
                                              ? Colors.indigo
                                              : Colors.grey[200]),
                                    ),
                                  );
                                }),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    gettext("US\$10"),
                    gettext("US\$10"),
                    gettext("US\$10"),
                  ],
                ),
                Column(
                  children: [
                    InkWell(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap: () {
                        Navigator.of(context)
                            .push(MaterialPageRoute(builder: (context) {
                          return Touch();
                        }));
                      },
                      child: Container(
                        // color: Colors.amber,
                        child: CarouselSlider(
                          options: CarouselOptions(
                              viewportFraction: 2,
                              aspectRatio: 3,
                              
                              onPageChanged: (index, _) {
                                setState(() {
                                  print(index);
                                  selecticon = index;
                                });
                              }),
                          items: forIcons.map((iconurl) {
                            return forItems(context, forIcons.indexOf(iconurl));
                          }).toList(),
                        ),
                      ),
                    ),
                    Container(
                      width: forIcons.length * 40,
                      height: 6,
                      color: Colors.white,
                      child: ListView.builder(
                        controller: _scrollController,
                        scrollDirection: Axis.horizontal,
                        itemCount: forIcons.length,
                        itemBuilder: (context, index) {
                          return Center(
                            child: Container(
                              width: 40,
                              height: 6,
                              decoration: BoxDecoration(
                                  //shape: BoxShape.circle,
                                  color: selecticon == index
                                      ? Colors.white
                                      : Colors.grey[500]),
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                )
              ],
            ),
          ],
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
              Row(
                children: [
                  InkWell(
                    onTap: () {},
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: Icon(
                      Icons.mail_outline_rounded,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 17),
                  InkWell(
                    onTap: () {},
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: Icon(
                      Icons.favorite_border_rounded,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
              
              const Center(
                child: Text(
                  "ZYO",
                  style: TextStyle(
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
             
              Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (context) {
                        return Search();
                      }));
                    },
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: Icon(
                      Icons.search,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: 17),
                  InkWell(
                    onTap: () {},
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: Icon(
                      Icons.shopping_bag_outlined,
                      size: 27,
                      color: Colors.white,
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  Widget forItems(BuildContext context, int index) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        forIcons[index].icon_1 == null
            ? Center()
            : items(context, forIcons[index].icon_1!),
        forIcons[index].icon_2 == null
            ? Center()
            : items(context, forIcons[index].icon_2!),
        forIcons[index].icon_3 == null
            ? Center()
            : items(context, forIcons[index].icon_3!),
        forIcons[index].icon_4 == null
            ? Center()
            : items(context, forIcons[index].icon_4!),
      ],
    );
  }

  items(BuildContext context, Icon icon) {
    return Padding(
      padding: const EdgeInsets.all(9),
      child: Container(
        width: 80,
        height: 80,
        child: CircleAvatar(
          radius: 10,
          backgroundColor: Colors.white,
          child: icon,
        ),
      ),
    );
  }
}

class ForIcon {
  Icon? icon_1;
  Icon? icon_2;
  Icon? icon_3;
  Icon? icon_4;

  ForIcon(this.icon_1, this.icon_2, this.icon_3, this.icon_4);
}
