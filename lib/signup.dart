import 'package:flutter/material.dart';
import 'package:flutter_signin_button/flutter_signin_button.dart';
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
              SizedBox(height: 15,),
              _header(context),
              SizedBox(
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
                        child: Text(
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
                        child: Text(
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
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                            enableSuggestions: true,
                            style: TextStyle(color: Colors.white),
                            cursorHeight: 25,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
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
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                            enableSuggestions: true,
                            style: TextStyle(color: Colors.white),
                            cursorHeight: 25,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              isDense: true,
                              suffixIcon: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                onTap: () {},
                              ),
                              focusedBorder: UnderlineInputBorder(
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
                                style: TextStyle(
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
                              child: Text(
                                "Forgot your password?",
                                style: TextStyle(color: Colors.white,fontSize: 12),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 40),
                        Container(
                          width: 380,
                          height: 60,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            child: Text(
                              "SIGN IN",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return MyNavBar();
                              },));
                            },
                          ),
                        ),
                        SizedBox(
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
                                SizedBox(width: 8),
                                Text(
                                  "Or join with",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10
                                  ),
                                ),
                                SizedBox(width: 8),
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
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                                  padding: const EdgeInsets.all(8.0),
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
                                  padding: const EdgeInsets.all(8.0),
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
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                            enableSuggestions: true,
                            style: TextStyle(color: Colors.white),
                            cursorHeight: 25,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              focusColor: Colors.white,
                              focusedBorder: UnderlineInputBorder(
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
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.emailAddress,
                          ),
                        ),
                        SizedBox(height: 40),
                        Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: TextFormField(
                            
                            enableSuggestions: true,
                            style: TextStyle(color: Colors.white),
                            cursorHeight: 25,
                            cursorColor: Colors.white,
                            decoration: InputDecoration(
                              isDense: true,
                              suffixIcon: InkWell(
                                overlayColor: MaterialStateProperty.all(
                                    Colors.transparent),
                                child: Icon(
                                  Icons.remove_red_eye_outlined,
                                  color: Colors.white,
                                  size: 18,
                                ),
                                onTap: () {},
                              ),
                              focusedBorder: UnderlineInputBorder(
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
                                style: TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ),
                            keyboardType: TextInputType.visiblePassword,
                          ),
                        ),
                        SizedBox(height: 10),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    height: 50,
                                    child: Checkbox(
                                      checkColor: Colors.black,
                                      shape: CircleBorder(),
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
                                      Text(
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
                              SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                Container(
                                  height: 20,                                                        
                                  child:  Checkbox(
                                      checkColor: Colors.black,
                                      shape: CircleBorder(),
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
                                  Container(
                                    width: MediaQuery.of(context).size.width*0.8,
                                    child: Text(
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
                        Container(
                          width: 380,
                          height: 60,
                          child: ElevatedButton(
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStateProperty.all(Colors.white),
                              overlayColor:
                                  MaterialStateProperty.all(Colors.transparent),
                            ),
                            child: Text(
                              "REGISTER",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            onPressed: () {
                               Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                                return MyNavBar();
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
                                SizedBox(width: 8),
                                Text(
                                  "Or join with",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                  ),
                                ),
                                SizedBox(width: 8),
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
                            SizedBox(height: 5),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
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
                                  padding: const EdgeInsets.all(8.0),
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
                                  padding: const EdgeInsets.all(8.0),
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
                            SizedBox(height: 10),
                            Text(
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
          Icon(Icons.add,color: Colors.black,size: 40,),
        
          Center(
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
            child: Text(
              "Skip",
              style: TextStyle(fontSize: 13, color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
