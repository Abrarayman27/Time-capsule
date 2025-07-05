// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_final_fields, empty_statements, unnecessary_new

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/greek/gold.dart';
import 'package:timecapsule/greek/greekphoto3.dart';
import 'package:timecapsule/greek/marbel.dart';
import 'package:timecapsule/greek/vase.dart';
import 'package:timecapsule/models/home.dart';
import 'package:timecapsule/models/map.dart';
import 'package:timecapsule/models/museumButtons.dart';
import 'package:timecapsule/Reviews/reviews.dart';
import 'package:timecapsule/greek/greekphoto2.dart';
import 'package:timecapsule/greek/uni2.dart';

class museum extends StatefulWidget {
  @override
  State<museum> createState() => museumState();
}

class museumState extends State<museum> {
  Icon ic = Icon(CupertinoIcons.heart, size: 30);
  bool state = false;
  Icon ic2 = Icon(
    CupertinoIcons.heart_solid,
    size: 30,
    color: Color.fromARGB(255, 206, 38, 26),
  );
  Icon ic3 = Icon(CupertinoIcons.heart, size: 30);

  void fav() {
    setState(() {
      if (state == false) {
        ic = ic2;
        state = true;
      } else {
        ic = ic3;
        state = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    // Navigator.pushNamed(context, "museum");

    return MaterialApp(
            debugShowCheckedModeBanner: false,

      
        routes: {
          "greekphoto1": (context) => uni(),
          "greekphoto2": (context) => greekphoto2(),
          "greekphoto3": (context) => greekphoto3(),
          "map": (context) => map(),
          "reviews": (context) => Reviews(),
          "vase": (context) => vase(),
          "gold": (context) => gold(),
          "marble": (context) => marble(),
          "home": (context) => home(),
         
          
        },
        home: Builder(builder: (context) {
          return Expanded(
            child: Scaffold(
                      body: SafeArea(
                        child: Stack(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                // borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                                image: DecorationImage(
                                  image: AssetImage("image/backgroung2.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              child: ListView(
                                children: [
                                  Builder(builder: (context) {
                                    return Container(
                                      width: 450,
                                      height: 350,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(50),
                                            bottomRight: Radius.circular(50)),
                                        image: DecorationImage(
                                          image: AssetImage("image/greek1.jpg"),
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
                                            Navigator.pushNamed(context, "map");;
                                          }, "Map", 95),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          museumButtons(() {}, "Description", 150,
                                              Color(0xFF69482E), Color(0xFFDDCC8C)),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          museumButtons(() {
                                            Navigator.pushNamed(context, "reviews");
                                            ;
                                          }, "Reviews", 120)
                                        ],
                                      ),
                                    );
                                  }),
                                  const SizedBox(
                                    height: 15.0,
                                  ),
                                  //2nd row
                                  SizedBox(
                                    width: 450,
                                    child: Row(children: [
                                      SizedBox(
                                        width: 35,
                                      ),
                                      Container(
                                        height: 48,
                                        width: 48,
                                        decoration: BoxDecoration(
                                            color: Color(0xFFA39467),
                                            shape: BoxShape.circle),
                                        child: Center(
                                            child: Icon(
                                          CupertinoIcons.doc_text,
                                          size: 40,
                                        )),
                                      ),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(
                                        "Description",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Color(0xFFDDCC8C)),
                                      ),
                                      SizedBox(
                                        width: 160,
                                      ),
                                      GestureDetector(
                                        onTap: () {
                                          fav();
                                        },
                                        child: ic,
                                        // size: 30,color: Colors.amber,
                                      ),
                                    ]),
                                  ),
          
                                  //3rd raw
                                  SizedBox(
                                    height: 10,
                                  ),
          
                                  Container(
                                    padding: EdgeInsets.only(left: 20, right: 20),
                                    child: Text(
                                      "Erected in 1892, it was first built in a five-room apartment,inside one small building on Rosetta Street (later Avenue Canope and now Horriya). In 1895,it was transferred to another, larger building near Gamal Abdul Nasser Street.Its first director was Giuseppe Botti. From 1904 to 1932 he was followed by Evaristo Breccia and then Achille Adriani. The museum was inaugurated in 1895 by Khedive Abbas II. The museum edited the Bulletin of the Alexandria Archaeological Society.The museum contains several pieces dating from the Greco-Roman (Ptolemaic) era in the 3rd century BC,such as a sculpture of ..........",
                                      style: TextStyle(
                                          fontSize: 16, color: Color(0xFFDDCC8C)),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SizedBox(
                                      width: 450,
                                      child: Row(
                                        children: [
                                          SizedBox(
                                            width: 20,
                                          ),
                                          Container(
                                            height: 48,
                                            width: 48,
                                            decoration: BoxDecoration(
                                                color: Color(0xFFA39467),
                                                shape: BoxShape.circle),
                                            child: Center(
                                                child: Image(
                                              image: AssetImage("image/sculpture.png"),
                                              width: 40,
                                              height: 40,
                                            )),
                                          ),
                                          SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                            "Pictures",
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20,
                                                color: Color(0xFFDDCC8C)),
                                          ),
                                        ],
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          width: 30,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, "greekphoto1");
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100 / 2 - 100 / 10),
                                            child: Image.asset(
                                              "image/p2.jfif",
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, "greekphoto2");
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100 / 2 - 100 / 10),
                                            child: Image.asset(
                                              "image/p11.jpg",
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, "greekphoto3");
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100 / 2 - 100 / 10),
                                            child: Image.asset(
                                              "image/p3.jpg",
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, "gold");
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100 / 2 - 100 / 10),
                                            child: Image.asset(
                                              "image/gold.jpg",
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, "vase");
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100 / 2 - 100 / 10),
                                            child: Image.asset(
                                              "image/uni.jpg",
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 30,
                                        ),
                                        GestureDetector(
                                          onTap: () {
                                            Navigator.pushNamed(context, "marble");
                                          },
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(100 / 2 - 100 / 10),
                                            child: Image.asset(
                                              "image/Marble.jpg",
                                              width: 100,
                                              height: 100,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                             SizedBox(
                              width: 100,
                              height: 100,
                              
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "home");
                    
                                },
                                child: Positioned(
                                  left: 5,
                                  // right: 10,
                                  bottom:5,
                                  child: Icon(CupertinoIcons.back,
                                      color: Colors.black, size: 30),
                                ),
                              )),
                          ],
                        ),
                      ),
                    ),
          )
          ;
        }));
  }
}
