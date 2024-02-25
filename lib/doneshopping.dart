import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Doneshopping extends StatelessWidget {
  const Doneshopping({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.file_download_done,
              color: Colors.white,
              size: MediaQuery.of(context).size.width*0.3,
            ),
            SizedBox(height: 10,),
            Text(
              "ORDER CONFIRMED",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    ));
  }
}
