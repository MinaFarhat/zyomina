// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class Head extends StatefulWidget {
  const Head({super.key});

  @override
  State<Head> createState() => _HeadState();
}

class _HeadState extends State<Head> {
  List<String> mylist = [
    "WOMAN",
    "MEN",
    "BAGS & ACCESSORIES",
    "BAGS & ACCESSORIES",
    "BAGS & ACCESSORIES"
  ];
  int selectText = 0;
  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      width: MediaQuery.of(context).size.width,
      height: 70,
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
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                        border: Border(
                            bottom: BorderSide(
                      color: selectText == index ? Colors.white : Colors.black,
                      width: 1.0, // Underline thickness
                    ))),
                    child: Text(
                      mylist[index],
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        itemCount: mylist.length,
      ),
    );
  }
}