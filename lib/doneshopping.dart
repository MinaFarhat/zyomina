import 'package:flutter/material.dart';

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
            const SizedBox(height: 10,),
            const Text(
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
