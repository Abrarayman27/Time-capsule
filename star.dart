// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:timecapsule/Reviews/reviews.dart';

class Star extends StatefulWidget {
  const Star({super.key});

  @override
  State<Star> createState() => _StarState();
}

class _StarState extends State<Star> {
  Text text1 = Text("Submitted",style: TextStyle(fontSize: 40,color:  Color(0xFFDDCC8C)),);
  Text text2 = Text("Thanks for your feedback",style: TextStyle(fontSize: 20,color:  Color(0xFFDDCC8C)),);

  Container c1 = Container(color: Colors.transparent,);

  void sendRate() {
    setState(() {
       c1= Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(15)),
                      color: Color(0xFF69482E)),
                      width: 300,
                      height: 100,
                      child: Center(child: Column(
                        children: [
                          text1,
                          text2,
                        ],
                      )));

    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "reviews":(context) => Reviews(),
      },
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) {
            return Scaffold(
                body: SafeArea(
                    child: Container(
              decoration: BoxDecoration(
                // borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage("image/backgroung2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Column(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 350,
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.only(start: 0, bottom: 10),
                        child: Text(
                          "Tap to Rate:",
                          style: TextStyle(fontSize: 20, color: Color(0xFFDDCC8C)),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(left: 60),
                        width: 400,
                        height: 120,
                        decoration: BoxDecoration(
                            color: Color(0xFFA89A6E).withOpacity(0.5),
                            borderRadius:
                                BorderRadius.all(Radius.elliptical(100, 100))),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 20,
                            ),
                            GestureDetector(
                              onTap: () {
                                sendRate();
                              },
                              child: RatingBar.builder(
                                  initialRating: 0,
                                  minRating: 1,
                                  direction: Axis.horizontal,
                                  allowHalfRating: true,
                                  itemCount: 5,
                                  itemPadding: EdgeInsets.symmetric(horizontal: 4),
                                  itemBuilder: (context, _) => Icon(
                                        CupertinoIcons.star_fill,
                                        color: Color(0xFFDDCC8C),
                                      ),
                                  onRatingUpdate: (rating) {
                                    // print(rating);
                                    Timer(Duration(seconds: 2), () {
                                      Navigator.pushNamed(context, "reviews");
                                     });
                                    
                                    sendRate();
                                  }),
                            )
                          ],
                        ),
                      ),
                    
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.only(top: 460,start:55),
                    child: c1
                  ),
                ],
              ),
            )));
          }
        ));
  }
}
