import 'dart:ffi';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:spotifyui/main.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        height: 800,
        child: Stack(
          children: [
            Positioned(
                left: 3,
                child: Image.asset(
                  "assets/bg.png",
                  fit: BoxFit.fill,
                )),
            Positioned(
              left: 100,
              top: 100,
              child: Container(
                width: 200,
                height: 100,
                child: Image.asset("assets/spotifylogo.png"),
              ),
            ),
            Positioned(
              left: 70,
              top: 200,
              child: Container(
                height: 80,
                child: Text(
                  "MIllions of songs, free on spotify",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 17),
                ),
              ),
            ),
            Positioned(
              top: 250,
              left: 25,
              child: Container(
                width: 342,
                height: 445,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 30),
                      alignment: Alignment.center,
                      width: 200,
                      child: Text(
                        "Login Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 30),
                          width: 260,
                          height: 32,
                          child: TextField(
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide(
                                color: Color(0xff1ED760),
                              )),
                              suffixIcon: Icon(
                                Icons.mail,
                                color: Color(0xff1ED760),
                              ),
                              labelText: "Email or username",
                              labelStyle: TextStyle(color: Color(0xff1ed760)),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Color(0xff1ED760),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 50, top: 10),
                          width: 260,
                          height: 32,
                          child: TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      BorderSide(color: Colors.black26)),
                              suffixIcon: Icon(
                                Icons.visibility_off,
                                color: Color(0xffdadada),
                              ),
                              labelText: "Password",
                              labelStyle: TextStyle(color: Colors.black26),
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(20),
                                borderSide: BorderSide(
                                  width: 2,
                                  color: Colors.black26,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 51, top: 30),
                          child: Text(
                            "Remember Me",
                            style:
                                TextStyle(color: Colors.black38, fontSize: 16),
                          ),
                          width: 200,
                          height: 70,
                        ),
                        Container(
                          margin: EdgeInsets.only(right: 30, bottom: 20),
                          child: IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.toggle_on,
                                color: Color(0xff1ED760),
                                size: 34,
                              )),
                        ),
                      ],
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Container(
                        alignment: Alignment.center,
                        width: 260,
                        height: 40,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Color(0xff1ED760),
                        ),
                        child: Text(
                          "LOG IN",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 13),
                        ),
                      ),
                    ),
                    Container(
                      width: 200,
                      height: 30,
                      child: Image.asset(
                        "assets/bot.png",
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset(
                            "assets/google.png",
                          ),
                          iconSize: 40,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: Image.asset("assets/facebook.png"),
                          iconSize: 40,
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 10),
                      child: Text(
                        "Forgot Password?",
                        style: TextStyle(
                            color: Colors.black54,
                            fontWeight: FontWeight.bold,
                            fontSize: 17),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 30,
              child: Container(
                width: 440,
                height: 50,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      //margin: EdgeInsets.only(left: 45),
                      width: 150,
                      child: Text(
                        "Don't have an account",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Container(
                      //margin: EdgeInsets.only(right: 50),
                      width: 90,
                      child: Text(
                        "Sign up now",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
