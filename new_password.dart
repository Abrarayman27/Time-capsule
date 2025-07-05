// import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/firstscreens/verification.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flag/flag.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_project_1/test2.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await FileImage.initializeApp();
  runApp(new_password());
}

class new_password extends StatelessWidget {
  new_password({super.key});

  final FirebaseAuth _auth = FirebaseAuth.instance;

//const new_password({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "verification": (context) => const verification(),
      },
      // debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              height: 1000,
              decoration: const BoxDecoration(
                // borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage("image/backgroung2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              // margin: const EdgeInsets.all(24),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                height: MediaQuery.of(context).size.height - 20,
                width: double.infinity,
                child: Container(
                  child: Stack(
                    children: [
                      const Padding(
                          padding: EdgeInsets.symmetric(horizontal: 40)),
                      const SizedBox(
                        height: 30,
                      ),
                      Positioned(
                        left: 0,
                        right: 10,
                        top: 85,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(70),
                            color: const Color(0xFFDDCC8C).withOpacity(0.4),
                          ),
                          width: 170,
                          height: 600,
                        ),
                      ),
                      Positioned(
                        left: 0,
                        right: 10,
                        top: 113,
                        child: Container(
                          decoration: BoxDecoration(
                            // borderRadius: BorderRadius.circular(40),
                            borderRadius: const BorderRadius.only(
                                bottomLeft: Radius.circular(70),
                                bottomRight: Radius.circular(70),
                                topLeft: Radius.circular(40),
                                topRight: Radius.circular(40)),

                            color: const Color(0xFF69482E).withOpacity(0.9),
                          ),
                          width: 560,
                          height: 600,
                        ),
                      ),
                      Container(
                        child: Padding(
                          padding: const EdgeInsetsDirectional.only(
                              start: 10, top: 80),
                          child: Column(
                            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              const SizedBox(
                                height: 50,
                              ),
                              _top(context),
                              const SizedBox(
                                height: 50,
                              ),
                              _inputs(context),
                              const SizedBox(
                                height: 20,
                              ),
                              _button(context),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }

  _top(context) {
    return const Column(
      children: [
        Text(
          "Your brain is just full of passwords , let's make you a new one.",
          style: TextStyle(fontSize: 20, color: Color(0xffDDCC8C)),
        ),
      ],
    );
  }

  _inputs(context) {
    return const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              // textAlign: TextAlign.center,

              "please enter your number:",
              style: TextStyle(fontSize: 17, color: Color(0xffDDCC8C)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          SizedBox(
            width: 310,
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Egypt",
                  hintStyle: TextStyle(
                      color: Color(0xffDDCC8C),
                      fontSize: 17,
                      fontWeight: FontWeight.normal),
                  icon: Icon(
                    CupertinoIcons.flag,
                    color: Color(0xffDDCC8C),
                  )),
              // keyboardType: TextInputType.phone,
              obscureText: true,
            ),
          ),
          SizedBox(
            height: 25,
          ),
          SizedBox(
            width: 310,
            child: TextField(
              decoration: InputDecoration(
                hintText: "+20    0  00 00 00 00",
                hintStyle: TextStyle(
                    color: Color(0xffDDCC8C),
                    fontSize: 17,
                    fontWeight: FontWeight.normal),
              ),
              keyboardType: TextInputType.phone,
            ),
          ),
          SizedBox(
            height: 25,
          ),
        ]);
  }

  _button(context) {
    return SizedBox(
      height: 60,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color(0xffDDCC8C).withOpacity(0.7),
            fixedSize: const Size.fromWidth(150),
          ),
          onPressed: () async {
            try {
              await _auth.sendPasswordResetEmail(email: "user@example.com");
              // Navigate to verification screen or show success message
            } catch (e) {
              print("Error sending password reset email: $e");
              // Show error message to the user
            }
          },
          child: const Padding(
            padding: EdgeInsets.all(4.0),
            child: Text(
              "Continue",
              style: TextStyle(
                  color: Color(0xff69482E),
                  fontWeight: FontWeight.bold,
                  fontSize: 20),
            ),
          )),
    );
  }
}
