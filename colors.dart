// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class background extends StatelessWidget {
  const background({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
  body: Container(
    // ignore: prefer_const_constructors
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage("image/backgroung2.jpg"),
        fit: BoxFit.cover,
      ),
    ),
    child: Container() //Your child here
    )
);
  }
}