// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:zyo/custom_nav_bar.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  int selectText = 0;
  bool _curentradio = false;
  bool _curentradio1 = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 15,),
              _header(context),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {
                          setState(() {
                            selectText = 0;
                          });
                        },
                        child: const Text(
                          "SIGN IN",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 64,
                        color: selectText == 0 ? Colors.white : Colors.black,
                      )
                    ],
                  ),
                  Column(
                    children: [
                      TextButton(
                        style: ButtonStyle(
                            overlayColor:
                                MaterialStateProperty.all(Colors.transparent)),
                        onPressed: () {
                          setState(() {
                            selectText = 1;
                          });
                        },
                        child: const Text(
                          "REGISTER",
                          style: TextStyle(fontSize: 16, color: Colors.white),
                        ),
                      ),
                      Container(
                        height: 2,
                        width: 80,
                        color: selectText == 1 ? Colors.white : Colors.black,
                      )
                    ],
                  ),
                ],
              ),
              selectText == 0
                  ? Column(
                      children: [
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                            enableSuggestions: true,
                            style: const TextStyle(color: Colors.white),
                            cursorHeight: 25,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 5.0),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              filled: true,
                              fillColor: Colors.black,
                              hoverColor: Colors.white,
                              label: Text(
                                "Email Address".toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                            enableSuggestions: true,
                            style: const TextStyle(color: Colors.white),
                            cursorHeight: 25,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              isDense: true,
                              suffixIcon: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                child: const Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                onTap: () {},
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5.0),
                              ),
                              focusColor: Colors.white,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 5.0),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              filled: true,
                              fillColor: Colors.black,
                              hoverColor: Colors.white,
                              label: Text(
                                "Password".toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              style: ButtonStyle(
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.transparent)),
                              onPressed: () {},
                              child: const Text(
                                "Forgot your password?",
                                style: TextStyle(color: Colors.white,fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 40),
                        SizedBox(
                          width: 380,
                          height: 60,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            child: const Text(
                              "SIGN IN",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return const MyNavBar();
                              },));
                            },
                          ),
                        ),
                        const SizedBox(
                          height: 210,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Colors.grey.shade600,
                                  ),
                                  height: 2,
                                  width: 70,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  "Or join with",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Colors.grey.shade600,
                                  ),
                                  height: 2,
                                  width: 70,
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          AssetImage("assets/google.png"),
                                      radius: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          AssetImage("assets/instagram.png"),
                                      radius: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          AssetImage("assets/facebook.png"),
                                      radius: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    )
                  : Column(
                      children: [
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                            enableSuggestions: true,
                            style: const TextStyle(color: Colors.white),
                            cursorHeight: 25,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5.0),
                              ),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 5.0),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              filled: true,
                              fillColor: Colors.black,
                              hoverColor: Colors.white,
                              label: Text(
                                "Email Address".toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        const SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                            
                            enableSuggestions: true,
                            style: const TextStyle(color: Colors.white),
                            cursorHeight: 25,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              isDense: true,
                              suffixIcon: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                child: const Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                onTap: () {},
                              ),
                              focusedBorder: const UnderlineInputBorder(
                                borderSide:
                                    BorderSide(color: Colors.white, width: 5.0),
                              ),
                              focusColor: Colors.white,
                              enabledBorder: UnderlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Colors.white, width: 5.0),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              filled: true,
                              fillColor: Colors.black,
                              hoverColor: Colors.white,
                              label: Text(
                                "Password".toUpperCase(),
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                        const SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 50,
                                    child: Checkbox(
                                      checkColor: Colors.black,
                                      shape: const CircleBorder(),
                                      splashRadius: 50,
                                      autofocus: true,
                                      fillColor: MaterialStateProperty.all(
                                        Colors.white,
                                      ),
                                      overlayColor: MaterialStateProperty.all(
                                        Colors.transparent,
                                      ),
                                      value: _curentradio,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _curentradio = val!;
                                          },
                                        );
                                      },
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "I agree to the",
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12
                                        ),
                                      ),
                                      TextButton(
                                        style: ButtonStyle(
                                            overlayColor:
                                                MaterialStateProperty.all(
                                                    Colors.transparent)),
                                        onPressed: () {},
                                        child: Text(
                                          "Privacy & Cookie Policy",
                                          style: TextStyle(
                                            color: Colors.blue.shade800,
                                            fontSize: 12
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                SizedBox(
                                  height: 20,                                                        
                                  child:  Checkbox(
                                      checkColor: Colors.black,
                                      shape: const CircleBorder(),
                                      autofocus: true,
                                      fillColor: MaterialStateProperty.all(
                                        Colors.white,
                                      ),
                                      overlayColor: MaterialStateProperty.all(
                                        Colors.transparent,
                                      ),
                                      value: _curentradio1,
                                      onChanged: (val) {
                                        setState(
                                          () {
                                            _curentradio1 = val!;
                                          },
                                        );
                                      },
                                    ),
                                ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width*0.8,
                                    child: const Text(
                                      maxLines: 4,
                                      softWrap: true,
                                      textAlign: TextAlign.justify,
                                      "By registering, you agree to receive exclusive offers and latest news by email. if you wish to no longer receive any email, please check the unsubscrible option",
                                      style: TextStyle(
                                       fontSize: 12,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: MediaQuery.of(context).size.height*0.03),
                        SizedBox(
                          width: 380,
                          height: 60,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            child: const Text(
                              "REGISTER",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return const MyNavBar();
                              },));
                            },
                          ),
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height*0.15,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Colors.grey.shade600,
                                  ),
                                  height: 2,
                                  width: 70,
                                ),
                                const SizedBox(width: 8),
                                const Text(
                                  "Or join with",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                                const SizedBox(width: 8),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(28),
                                    color: Colors.grey.shade600,
                                  ),
                                  height: 2,
                                  width: 70,
                                ),
                              ],
                            ),
                            const SizedBox(height: 5),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          AssetImage("assets/google.png"),
                                      radius: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          AssetImage("assets/instagram.png"),
                                      radius: 15,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.all(8.0),
                                  child: InkWell(
                                    child: CircleAvatar(
                                      backgroundColor: Colors.white,
                                      backgroundImage:
                                          AssetImage("assets/facebook.png"),
                                      radius: 15,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              "By joining, you agree to our Privacy & Cookie Policy",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10),
                            ),
                          ],
                        ),
                      ],
                    ),
            ],
          ),
        ),
      ),
    );
  }

  _header(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.add,color: Colors.black,size: 40,),
        
          const Center(
            child: Text(
              "ZYO",
              style: TextStyle(
                fontSize: 55,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        
          TextButton(
            style: ButtonStyle(
                overlayColor: MaterialStateProperty.all(Colors.transparent)),
            onPressed: () {},
            child: const Text(
              "Skip",
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
