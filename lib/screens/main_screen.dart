import 'dart:js_util';

import 'package:flutter/cupertino.dart';
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
                                  if (isSignupScreen == true)
                                    TextSpan(
                                        text: 'to EOS chat!',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )
                                    )
                                  else
                                    TextSpan(
                                        text: 'back',
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                        )
                                    )
                                ]
                            )
                        ),
                        SizedBox(
                          height: 5.0,
                        ),
                        if (isSignupScreen == true)
                          Text('Signup to continue',
                              style: TextStyle(
                                  letterSpacing: 1.0, color: Colors.white))
                        else
                          Text('Signin to continue',
                              style: TextStyle(
                                  letterSpacing: 1.0, color: Colors.white))
                      ],
                    ),
                  ),
                )
            ),
            Positioned(
                top: 180,
                child: AnimatedContainer(
                  height: isSignupScreen == true ? 310.0 : 280.0,
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
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeIn,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = false;
                              });
                            },
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
                                if(!isSignupScreen)
                                  Container(
                                    margin: EdgeInsets.fromLTRB(0, 3, 0, 0),
                                    height: 2.0,
                                    width: 55,
                                    color:Colors.green),
                              ],
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                isSignupScreen = true;
                              });
                            },
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
                                if(isSignupScreen)
                                  Container(
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
                      if (isSignupScreen)
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Form(
                              child: Column(children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon:
                                    Icon(CupertinoIcons.person_crop_circle),
                                    iconColor: Palette.iconColor,
                                    hintText: 'User name',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.circular(35)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.circular(35)),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email),
                                    iconColor: Palette.iconColor,
                                    hintText: 'email',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.circular(35)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.circular(35)),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    iconColor: Palette.iconColor,
                                    hintText: 'password',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.circular(35)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.circular(35)),
                                  ),
                                ),
                              ]),
                            ))
                      else
                        Container(
                            padding: EdgeInsets.only(top: 20),
                            child: Form(
                              child: Column(children: [
                                TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.email),
                                    iconColor: Palette.iconColor,
                                    hintText: 'email',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.circular(35)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.circular(35)),
                                  ),
                                ),
                                SizedBox(height: 8,),
                                TextFormField(
                                  decoration: InputDecoration(
                                    prefixIcon: Icon(Icons.lock),
                                    iconColor: Palette.iconColor,
                                    hintText: 'password',
                                    enabledBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.circular(35)),
                                    focusedBorder: OutlineInputBorder(
                                        borderSide:
                                        BorderSide(color: Palette.textColor1),
                                        borderRadius: BorderRadius.circular(35)),
                                  ),
                                ),
                              ]),
                            ))
                    ]),
                )),
            AnimatedPositioned(
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeIn,
                top: (isSignupScreen == true) ? 450 : 420,
                right: 0,
                left: 0,
                child: Center(
                    child: Container(
                        padding: EdgeInsets.all(15),
                        height: 90,
                        width: 90,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Container(
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [Colors.lightGreen, Colors.green],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight),
                                borderRadius: BorderRadius.circular(30),
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black.withOpacity(0.3),
                                      spreadRadius: 1,
                                      blurRadius: 1,
                                      offset: Offset(0, 1))
                                ]),
                            child: Icon(
                              CupertinoIcons.arrow_right,
                              color: Colors.white,
                            ))))),
            Positioned(
                top: MediaQuery.of(context).size.height - 125,
                right: 0,
                left: 0,
                child: Column(
                  children: [
                    if (isSignupScreen == false)
                      Text('or Signin with')
                    else if (isSignupScreen == true)
                      Text('or Signup with'),
                    SizedBox(
                      height: 10,
                    ),
                    TextButton.icon(
                      onPressed: () {},
                      style: TextButton.styleFrom(
                        primary: Colors.white,
                        minimumSize: Size(155, 40),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        backgroundColor: Palette.googleColor,
                      ),
                      icon: Icon(Icons.add),
                      label: Text('Google'),
                    ),
                  ],
                ))
          ],
        ));
  }
}