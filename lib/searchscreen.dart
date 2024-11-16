// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pop();
                    },
                    overlayColor: MaterialStateProperty.all(Colors.transparent),
                    child: const Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.66,
                    height: 40,
                    child: TextFormField(
                      style: const TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                      cursorHeight: 25,
                      cursorColor: Colors.black,
                      decoration: InputDecoration(
                        focusColor: Colors.black,
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  const Text(
                    "Search",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 5,),
            Divider(color: Colors.grey.shade700,thickness: 2.5,),
          ],
        ),
      ),
    );
  }
}
