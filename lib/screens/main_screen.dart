import 'dart:js_util';

import 'package:flutter/material.dart';
import '../config/palette.dart';
class LoginSignUpScreen extends StatefulWidget {
  const LoginSignUpScreen({Key? key}) : super(key: key);
  @override
  State<LoginSignUpScreen> createState() => _LoginSignUpScreenState();
}

class _LoginSignUpScreenState extends State<LoginSignUpScreen>{
  bool isSignupScreen = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.backgroundColor,
        body: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/background.png'),
                        fit: BoxFit.fill
                    ),
                  ),
                  child: Container(
                    padding: EdgeInsets.fromLTRB(20, 90, 0, 0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(
                                text: 'Welcome ',
                                style: TextStyle(
                                    letterSpacing: 1.0 , fontSize: 25, color: Colors.white
                                ),
                                children: [
                                  TextSpan(
                                      text: 'to EOS chat',
                                      style: TextStyle(
                                          letterSpacing: 1.0 , fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold
                                      )

                                  )
                                ]
                            )
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        Text(
                          'Signup to continue',
                          style: TextStyle(
                              letterSpacing: 1.0, color: Colors.white
                          ),
                        )
                      ],
                    ),
                  ),
                )
            ),
            Positioned(
                top: 150,
                child: Container(
                  height: 280.0,
                  padding: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width - 40,
                  margin: EdgeInsets.fromLTRB(20, 0, 20, 0),
                  decoration: BoxDecoration(
                      color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(15)),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            //offset: Offset(0.3, 0.3),
                            blurRadius: 15,
                            spreadRadius: 5
                        )
                      ]
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            child: Column(
                              children: [
                                Text(
                                  'LOGIN',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: isSignupScreen == true ? Palette.textColor1 : Palette.activeColor,
                                  ),
                                ),
                                if(!isSignupScreen) Container( height:1.0,
                                  width:500.0,
                                  color:Colors.black,),
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                  height: 2,
                                  width: 55,
                                  color: Colors.green,
                                )
                              ],
                            ),
                          ),
                          GestureDetector(
                            child: Column(
                              children: [
                                Text(
                                  'SIGNUP',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: isSignupScreen == true ? Palette.activeColor : Palette.textColor1,
                                  ),
                                ),
                                if(isSignupScreen) Container(
                                  margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                  height: 2,
                                  width: 55,
                                  color: Colors.green,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                      Container(
                        child: Form(
                          child: Column(
                            children: [
                              TextFormField(
                                decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.adb, color: Palette.iconColor),
                                    enabledBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(Radius.circular(35))
                                    ),

                                    focusedBorder: OutlineInputBorder(
                                        borderSide: BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.all(Radius.circular(35))
                                    )

                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
            ),
            Positioned(
              top: 430,
              right: 0,
              left: 0,
              child: Center(
                child: Container(
                  padding: EdgeInsets.all(15),
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.all(Radius.circular(50)),
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Colors.lightGreen, Colors.green],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight
                      ),
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(0, 1)
                        )
                      ]
                    ),
                    child: Icon(
                      Icons.arrow_forward,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
                top: MediaQuery.of(context).size.height - 150,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    Text(
                      isSignupScreen == true ? 'or Signup with' : 'or Signin with',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(155, 40),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20)
                        ),
                        backgroundColor: Palette.googleColor,
                      ),
                      icon: Icon(Icons.add),
                      label: Text('Google'),
                    )
                  ],
                )
            )//Positioned(child: child)
          ],
        )
    );
  }
}