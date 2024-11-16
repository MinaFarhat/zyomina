// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Details extends StatefulWidget {
  String? image;
  Details(this.image, {super.key});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  bool s1 = false;

  bool s2 = false;

  bool s3 = false;

  bool s4 = false;
  int choosen = 0;
  int select = 0;
  bool h = false;
  int s = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.height -
                  MediaQuery.of(context).padding.top,
              child: SingleChildScrollView(
                physics: const NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              InkWell(
                                overlayColor: WidgetStateProperty.all(
                                    Colors.transparent),
                                onTap: () {
                                  Navigator.of(context).pop();
                                },
                                child: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                        CircleAvatar(
                          backgroundImage: AssetImage(widget.image.toString()),
                          radius: 45,
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            InkWell(
                              overlayColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              onTap: () {
                                setState(() {
                                  select = 0;
                                });
                              },
                              child: Column(
                                children: [
                                  const Text(
                                    "Goods",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    width: 55,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: select == 0
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            InkWell(
                              overlayColor:
                                  WidgetStateProperty.all(Colors.transparent),
                              onTap: () {
                                setState(() {
                                  select = 1;
                                });
                              },
                              child: Column(
                                children: [
                                  const Text(
                                    "Reviews",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700,
                                    ),
                                  ),
                                  Container(
                                    width: 70,
                                    height: 3,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(20),
                                      color: select == 1
                                          ? Colors.white
                                          : Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 45,
                        ),
                      ],
                    ),
                    select == 0
                        ? SingleChildScrollView(
                            child: Column(
                              children: [
                                const Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7),
                                      child: Text(
                                        "CROP TOP DRAGON TOTEM PRINT LETTERS DESIGN",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7),
                                      child: Text(
                                        "US\$9.00",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 18),
                                      child: Row(
                                        children: [
                                          InkWell(
                                            overlayColor:
                                                WidgetStateProperty.all(
                                                    Colors.transparent),
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
                                                WidgetStateProperty.all(
                                                    Colors.transparent),
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
                                                WidgetStateProperty.all(
                                                    Colors.transparent),
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
                                                WidgetStateProperty.all(
                                                    Colors.transparent),
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
                                const SizedBox(
                                  height: 20,
                                ),
                                const Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 7),
                                      child: Text(
                                        "Color:",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      "Burgundy",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 15,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 15,
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
                                        overlayColor: MaterialStateProperty.all(
                                            Colors.transparent),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: choosen == 0
                                                  ? Border.all(
                                                      width: 2,
                                                      color: Colors.white)
                                                  : Border.all(
                                                      width: 2,
                                                      color: Colors.black)),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Colors.grey.shade900,
                                            radius: choosen == 0 ? 13 : 12,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            choosen = 1;
                                          });
                                        },
                                        overlayColor: MaterialStateProperty.all(
                                            Colors.transparent),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: choosen == 1
                                                  ? Border.all(
                                                      width: 2,
                                                      color: Colors.white)
                                                  : Border.all(
                                                      width: 2,
                                                      color: Colors.black)),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Colors.blue.shade900,
                                            radius: choosen == 1 ? 13 : 12,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            choosen = 2;
                                          });
                                        },
                                        overlayColor: MaterialStateProperty.all(
                                            Colors.transparent),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: choosen == 2
                                                  ? Border.all(
                                                      width: 2,
                                                      color: Colors.white)
                                                  : Border.all(
                                                      width: 2,
                                                      color: Colors.black)),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Colors.brown.shade900,
                                            radius: choosen == 2 ? 13 : 12,
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        width: 20,
                                      ),
                                      InkWell(
                                        onTap: () {
                                          setState(() {
                                            choosen = 3;
                                          });
                                        },
                                        overlayColor: MaterialStateProperty.all(
                                            Colors.transparent),
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              border: choosen == 3
                                                  ? Border.all(
                                                      width: 2,
                                                      color: Colors.white)
                                                  : Border.all(
                                                      width: 2,
                                                      color: Colors.black)),
                                          child: CircleAvatar(
                                            backgroundColor:
                                                Colors.red.shade900,
                                            radius: choosen == 3 ? 13 : 12,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Column(
                                  children: [
                                    const Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 7),
                                          child: Text(
                                            "Size",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 19,
                                                fontWeight: FontWeight.w700),
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 18,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 7),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          InkWell(
                                            overlayColor:
                                                MaterialStateProperty.all(
                                                    Colors.transparent),
                                            onTap: () {
                                              setState(() {
                                                s = 0;
                                              });
                                            },
                                            child: Container(
                                              width: 70,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(28),
                                                color: s == 0
                                                    ? Colors.white
                                                    : Colors.black,
                                                border: Border.all(
                                                  color: Colors.white,
                                                ),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "M",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: s == 0
                                                        ? Colors.black
                                                        : Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          InkWell(
                                            overlayColor:
                                                MaterialStateProperty.all(
                                                    Colors.transparent),
                                            onTap: () {
                                              setState(() {
                                                s = 1;
                                              });
                                            },
                                            child: Container(
                                              width: 70,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(28),
                                                color: s == 1
                                                    ? Colors.white
                                                    : Colors.black,
                                                border: Border.all(
                                                    color: Colors.white),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "L",
                                                  style: TextStyle(
                                                    fontWeight: FontWeight.w700,
                                                    color: s == 1
                                                        ? Colors.black
                                                        : Colors.white,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          InkWell(
                                            overlayColor:
                                                MaterialStateProperty.all(
                                                    Colors.transparent),
                                            onTap: () {
                                              setState(() {
                                                s = 2;
                                              });
                                            },
                                            child: Container(
                                              width: 70,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(28),
                                                color: s == 2
                                                    ? Colors.white
                                                    : Colors.black,
                                                border: Border.all(
                                                    color: Colors.white),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "XL",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: s == 2
                                                          ? Colors.black
                                                          : Colors.white),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 15,
                                          ),
                                          InkWell(
                                            overlayColor:
                                                MaterialStateProperty.all(
                                                    Colors.transparent),
                                            onTap: () {
                                              setState(() {
                                                s = 3;
                                              });
                                            },
                                            child: Container(
                                              width: 70,
                                              height: 35,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(28),
                                                color: s == 3
                                                    ? Colors.white
                                                    : Colors.black,
                                                border: Border.all(
                                                    color: Colors.white),
                                              ),
                                              child: Center(
                                                child: Text(
                                                  "XS",
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.w700,
                                                      color: s == 3
                                                          ? Colors.black
                                                          : Colors.white),
                                                ),
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  thickness: 7,
                                  color: Colors.grey.shade900,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                    overlayColor: MaterialStateProperty.all(
                                              Colors.transparent),
                                          onTap: () {},
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Icon(
                                        Icons.where_to_vote_rounded,
                                        color: Colors.green.shade700,
                                        size: 30,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Text(
                                        "Return Police",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 15,
                                          fontWeight: FontWeight.w500,
                                        ),
                                      ),
                                      const Spacer(),
                                      const Padding(
                                        padding: EdgeInsets.all(8.0),
                                        child: Icon(
                                          Icons.arrow_forward_ios_outlined,
                                          color: Colors.white,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  thickness: 7,
                                  color: Colors.grey.shade900,
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                InkWell(
                                  onTap: () {
                                            bottom();
                                          },
                                  overlayColor:MaterialStateProperty.all(Colors.transparent) ,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.symmetric(horizontal: 7),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        const Text(
                                          "Description",
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 17,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 5,
                                        ),
                                        const Spacer(),
                                        SizedBox(
                                          width: MediaQuery.of(context).size.width*0.5,
                                          child: const Text(
                                            "#High Stretch #Stand Collar #5 khjhhgkk",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 12,
                                              fontWeight: FontWeight.w300,
                                            ),
                                            overflow: TextOverflow.ellipsis,
                                          ),
                                        ),
                                        const SizedBox(
                                          width: 2,
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  thickness: 2,
                                  color: Colors.grey.shade900,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.symmetric(horizontal: 7),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CircleAvatar(
                                        backgroundImage:
                                            AssetImage(widget.image.toString()),
                                        radius: 30,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      const Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "Model Size: S",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Height: 176 Cm / 69.3Inch                                Bust: 89 Cm /35Inch",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                            softWrap: true,
                                          ),
                                          SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            "Waist: 63 Cm / 24.8Inch                                Hips: 92 Cm / 36.2Inch",
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 10,
                                            ),
                                            softWrap: true,
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Divider(
                                  thickness: 15,
                                  color: Colors.grey.shade900,
                                ),
                              ],
                            ),
                          )
                        : SingleChildScrollView(
                            physics: const NeverScrollableScrollPhysics(),
                            child: Column(
                              children: [
                                const SizedBox(
                                  height: 10,
                                ),
                                const Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 7),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Reviews ( 2039 )",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 15,
                                ),
                                SizedBox(
                                  height: MediaQuery.of(context).size.height,
                                  child: ListView.builder(
                                    // ignore: avoid_types_as_parameter_names
                                    itemBuilder: (context, int) {
                                      return comment();
                                    },
                                    shrinkWrap: true,
                                    itemCount: 15,
                                  ),
                                ),
                              ],
                            ),
                          ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 50,
                color: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    InkWell(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap: () {
                        if (h == false) {
                          setState(() {
                            h = true;
                          });
                        } else {
                          setState(() {
                            h = false;
                          });
                        }
                      },
                      child: h == false
                          ? const Icon(
                              Icons.favorite_border_outlined,
                              color: Colors.black,
                              size: 35,
                            )
                          : const Icon(
                              Icons.favorite_outlined,
                              color: Colors.black,
                              size: 35,
                            ),
                    ),
                    InkWell(
                      overlayColor:
                          MaterialStateProperty.all(Colors.transparent),
                      onTap: () {},
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.6,
                        height: 40,
                        color: Colors.black,
                        child: const Center(
                          child: Text(
                            "ADD TO BAG",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bottom() {
    return showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.black,
      context: context,
      builder: ((context) {
        return SizedBox(
          height: MediaQuery.of(context).size.height * 0.8,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        child: const Icon(
                          Icons.close,
                          color: Colors.black,
                        ),
                      ),
                      const Text(
                        "Description",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      InkWell(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                        child: const Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 30,
                        ),
                      )
                    ],
                  ),
                ),
                Divider(
                  color: Colors.grey.shade900,
                  thickness: 2,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Style:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Casual",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Color:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Black",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Pattern Type:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Plain",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Length:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Regular",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Season:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Spring/Fall",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Type:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Windbreaker",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Details:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Drawstring",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Sleeve Length:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Long Sleeve",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Sleeve Type:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Regular Sleeve",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Fit Type:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Regular Fit",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Sheer:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "No",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Placket:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Zipper",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Material:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Polyester",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Composition:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "100% Polyester",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Fabric:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Non-Stretch",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Care Instructions:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * 0.55,
                                child: Text(
                                  "Machine Wash Or Professional Dry Clean",
                                  style: TextStyle(
                                    color: Colors.grey.shade700,
                                    fontSize: 15,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "SKU:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 17,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Sw215548514514",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: MediaQuery.of(context).size.width * 0.4,
                            child: const Text(
                              "Season:",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text(
                                "Casual",
                                style: TextStyle(
                                  color: Colors.grey.shade700,
                                  fontSize: 15,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      }),
    );
  }

  Widget comment() {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 23),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 7),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/h.jpg"),
                  radius: 30,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: const Text(
                          "Andre Young",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                      Row(
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
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.75,
                    child: const Text(
                      "Wonderful glasses, perfect gift for my girl for our anniversary!",
                      softWrap: true,
                      maxLines: 7,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 13,
                          overflow: TextOverflow.fade),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 35,
        ),
      ],
    );
  }
}
