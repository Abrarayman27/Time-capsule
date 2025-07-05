// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:timecapsule/Reviews/star.dart';
import 'package:timecapsule/models/map.dart';
import 'package:timecapsule/greek/museum.dart';
import 'package:timecapsule/models/museumButtons.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/Reviews/reviewcard.dart';

class Reviews extends StatefulWidget {
  const Reviews({super.key});

  @override
  State<Reviews> createState() => _ReviewsState();
}

class _ReviewsState extends State<Reviews> {
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
        routes: {
          "map": (context) => map(),
          "description": (context) => museum(),
          "star":(context) => Star(),
        },
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) {
            return Scaffold(
                body: SafeArea(
                    child: Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage("image/backgroung2.jpg"),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: ListView(children: [
                          Builder(builder: (context) {
                            return Container(
                              width: 450,
                              height: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50)),
                                image: DecorationImage(
                                  image: AssetImage("image/royal.jpeg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                // mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const SizedBox(
                                    width: 20.0,
                                  ),
                                  museumButtons(() {
                                    Navigator.pushNamed(context, "map");
                                  }, "Map", 95),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  museumButtons(
                                    () {
                                      Navigator.pushNamed(context, "description");
                                    },
                                    "Description",
                                    150,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  museumButtons(() {}, "Reviews", 120,
                                      Color(0xFF69482E), Color(0xFFDDCC8C))
                                ],
                              ),
                            );
                          }),
                          const SizedBox(
                            height: 15.0,
                          ),
                          SizedBox(
                              width: 450,
                              child: Row(children: [
                                SizedBox(
                                  width: 15,
                                ),
                                Container(
                                  height: 48,
                                  width: 48,
                                  decoration: BoxDecoration(
                                      color: Color(0xFFA39467),
                                      shape: BoxShape.circle),
                                  child: Center(
                                      child: Icon(
                                    CupertinoIcons.captions_bubble,
                                    size: 35,
                                  )),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Museum Reviews",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                      color: Color(0xFFDDCC8C)),
                                ),
                              ])),
                          SizedBox(
                            height: 20,
                          ),
                          cardmodel(
                              i1: Icon(
                                CupertinoIcons.person,
                                size: 40,
                                color: Colors.black,
                              ),
                              firstName: "Rana",
                              lasttName: "Alaa",
                              rate: 4.5,
                              rev: "the app is really fun and i enjoyed using it "),
                          SizedBox(
                            height: 20,
                          ),
                          cardmodel(
                              i1: Icon(
                                CupertinoIcons.person,
                                size: 40,
                                color: Colors.black,
                              ),
                              firstName: "Sama",
                              lasttName: "Mohamed",
                              rate: 3.9,
                              rev:
                                  "Great user interface it makes me feel like im in real museum.   "),
                          SizedBox(
                            height: 20,
                          ),
                          cardmodel(
                              i1: Icon(
                                CupertinoIcons.person,
                                size: 40,
                                color: Colors.black,
                              ),
                              firstName: "Menna",
                              lasttName: "Hussien",
                              rate: 4.2,
                              rev:
                                  "Great experience and features , i really like the Egyptian culture.   "),
                          SizedBox(
                            height: 10,
                          ),
                          SizedBox(
                            width: 3,
                            height: 50,
                            child: TextField(
                              // maxLines: 3,
                              cursorColor: Colors.black,
                              style: TextStyle(
                                color: Color(0xFF69482E),
                              ),
            
                              decoration: InputDecoration(
                                suffixIcon: GestureDetector(
                                  onTap: () {
                                Navigator.pushNamed(context, "star");
            
            
                                  },
                                  child: Icon(CupertinoIcons.star),
                                ),
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      width: 2, color: Color(0xFF69482E)),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                hintText: 'Add review',
                                filled: true,
                                fillColor: Color(0xFFDDCC8C),
                              ),
                            ),
                          ),
                        ]))));
          }
        ));
  }
}
