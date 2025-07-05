// ignore_for_file: prefer_const_constructors, sort_child_properties_last



import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/Profile/favorites.dart';
import 'package:timecapsule/Profile/notifications.dart';
import 'package:timecapsule/Profile/user_profile.dart';
import 'package:timecapsule/Royal/royaldescription.dart';
import 'package:timecapsule/models/add.dart';
import 'package:timecapsule/models/cooming.dart';
import 'package:timecapsule/greek/museum.dart';
import 'package:timecapsule/shelterm/shelter1.dart';
//import 'package:timecapsule/widget/colors.dart';
//import 'package:vector_math/vector_math.dart' as whatever;

class home extends StatefulWidget {
  static const routeName = "home";
  const home({super.key});

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {
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
    return MaterialApp(
      routes: {
        "museum": (context) => museum(),
        "royalmuseum": (context) => royalmuseum(),
        "shelter": (context) => shelter(),
        "user_profile": (context) => const user_profile(),
        "favourite": (context) => favorite(),
        "notifications": (context) => const notifications(),
        "cairo": (context) => cooming(),
      },
      // initialRoute: "museum",
      debugShowCheckedModeBanner: false,

      home: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            flexibleSpace:
                Image.asset('image/backgroung2.jpg', fit: BoxFit.cover),
            toolbarHeight: 100,

            // leading:IconButton(
            //   onPressed: () { print('hi'); },
            //   icon:const Icon(Icons.arrow_back_ios),
            //   color:Colors.black,
            // ),

            // padding: const EdgeInsets.all(6.0),

            title: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xff69482E),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: const Text(
                      'Alexandria',
                      style: TextStyle(
                        color: Color(0xffDDCC8C),
                        fontSize: 17,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffDDCC8C),
                      borderRadius: BorderRadius.circular(18.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "cairo");
                      },
                      child: Text(
                        'Cairo',
                        style: TextStyle(
                          color: Color(0xff69482E),
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffDDCC8C),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "cairo");
                      },
                      child: Text(
                        'Luxor',
                        style: TextStyle(
                          color: Color(0xff69482E),
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffDDCC8C),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "cairo");
                      },
                      child: Text(
                        'Aswan',
                        style: TextStyle(
                          color: Color(0xff69482E),
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffDDCC8C),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "cairo");
                      },
                      child: Text(
                        'Matrouh',
                        style: TextStyle(
                          color: Color(0xff69482E),
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Color(0xffDDCC8C),
                      borderRadius: BorderRadius.circular(20.0),
                    ),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, "cairo");
                      },
                      child: Text(
                        'Sinai',
                        style: TextStyle(
                          color: Color(0xff69482E),
                          fontSize: 17,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),

                  //  SizedBox(height: 20),
                ],
              ),
            ),
          ),
          body: Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("image/backgroung2.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            // ignore: prefer_const_constructors
            width: double.infinity,
            height: double.infinity,

            child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomStart,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          image: const DecorationImage(
                            image: AssetImage("image/alexlibrary.jpg"),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        width: 450,
                        height: 200,
                      ),
                      Container(
                        child: Text('Alex Library',
                            style: TextStyle(
                                color: Color(0xffDDCC8C),
                                fontSize: 20,
                                fontWeight: FontWeight.bold)),
                      )
                    ],
                  ),
                  SizedBox(height: 50),
                  SingleChildScrollView(
                    child: Container(
                      child: Text(
                        'Top Museums',
                        style: TextStyle(
                            color: Color(0xffDDCC8C),
                            fontSize: 27,
                            fontWeight: FontWeight.bold),
                      ),
                      padding: EdgeInsetsDirectional.only(start: 30.0),
                    ),
                  ),
                  SizedBox(height: 60),
                  Row(
                    children: [
                      Builder(builder: (context) {
                        return Container(
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "shelter");
                            },
                            child: ClipRRect(
                              borderRadius:
                                  BorderRadius.circular(100 / 2 - 100 / 10),
                              child: Image.asset(
                                "image/shelter.jpg",
                                width: 100,
                                height: 80,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          padding: EdgeInsetsDirectional.only(start: 25.0),
                        );
                      }),
                      SizedBox(width: 25),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "museum");
                        },
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(100 / 2 - 100 / 10),
                          child: Image.asset(
                            "image/greek.jpg",
                            width: 100,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(width: 25),
                      GestureDetector(
                        onTap: () {
                          Navigator.pushNamed(context, "royalmuseum");
                        },
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(100 / 2 - 100 / 10),
                          child: Image.asset(
                            "image/royal.jpeg",
                            width: 100,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Container(
                        child: Text(
                          //EXPANDED
                          'Shelter',
                          style: TextStyle(
                            color: Color(0xffDDCC8C),
                            fontSize: 16,
                          ),
                        ),
                        padding: EdgeInsetsDirectional.only(start: 45.0),
                      ),
                      SizedBox(width: 18),
                      Container(
                        child: Text(
                          'Greek',
                          style: TextStyle(
                            color: Color(0xffDDCC8C),
                            fontSize: 16,
                          ),
                        ),
                        padding: EdgeInsetsDirectional.only(start: 60.0),
                      ),
                      SizedBox(width: 12),
                      Container(
                        child: Text(
                          'Royal Jewelry',
                          style: TextStyle(
                            color: Color(0xffDDCC8C),
                            fontSize: 16,
                          ),
                        ),
                        padding: EdgeInsetsDirectional.only(start: 50.0),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 60,
                  ),

                  Expanded(
                    child: Container(
                      padding: const EdgeInsetsDirectional.only(start: 14),
                      // width:50,
                      height: 90,
                      child: Row(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "uni");
                          },
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(100 / 2 - 100 / 10),
                            child: Image.asset(
                              "image/royal.jpeg",
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, "royalmuseum");
                          },
                          child: SizedBox(
                            height: 90,
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Container(
                                      child: Text(
                                        'Royal Jewelry',
                                        style: TextStyle(
                                            color: Color(0xffDDCC8C),
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      padding: const EdgeInsetsDirectional.only(
                                          // start: 12,
                                          start: 50),
                                    ),
                                    SizedBox(width: 55),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.only(
                                          top: 10, start: 10),
                                      child: Container(
                                        child: GestureDetector(
                                          onTap: () {
                                            fav();
                                            addCategory();
                                          },
                                          child: ic,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                Expanded(
                                  child: Container(
                                    width: 250,
                                    child: Text(
                                      ' Museums collection is the product of donations from wealthy alexandrians',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      style: TextStyle(
                                        color: Color(0xffDDCC8C),
                                        fontSize: 15,
                                      ),
                                    ),
                                    padding: const EdgeInsetsDirectional.only(
                                      start: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ]),
                      decoration: BoxDecoration(
                        color: Color(0xff69482E).withOpacity(0.6),
                        borderRadius: BorderRadius.circular(60.0),
                      ),
                    ),
                  ),

                  // Container(
                  //   // decoration: BoxDecoration((BoxShadow:BoxShadow(color:Color(0xFF69482E),blurRadius: 1,spreadRadius: 2 ))),

                  //   padding:
                  //       const EdgeInsetsDirectional.only(top: 30, start: 17),
                  //   child: Row(
                  //     children: [
                  //       Padding(
                  //         padding: const EdgeInsetsDirectional.only(
                  //             top: 40, start: 20),
                  //         child: GestureDetector(
                  //           onTap: () {
                  //             Navigator.pushNamed(context, "museum");
                  //           },
                  //           child: ClipRRect(
                  //             borderRadius:
                  //                 BorderRadius.circular(100 / 2 - 100 / 10),
                  //             child: Image.asset(
                  //               "image/royal.jpeg",
                  //               width: 100,
                  //               height: 80,
                  //               fit: BoxFit.cover,
                  //             ),
                  //           ),
                  //         ),
                  //       ),
                  //       Container(
                  //         width: 200,
                  //         child: Column(
                  //           children: [
                  //             Container(
                  //               child: Text(
                  //                 'Royal Jewelry',
                  //                 style: TextStyle(
                  //                     color: Color(0xffDDCC8C),
                  //                     fontSize: 20,
                  //                     fontWeight: FontWeight.bold),
                  //               ),
                  //               padding: const EdgeInsetsDirectional.only(
                  //                   top: 40, start: 20),
                  //             ),
                  //             Container(
                  //               child: Text(
                  //                 'Museums collection is the product of donations from wealthy alexandrians',
                  //                 maxLines: 2,
                  //                 overflow: TextOverflow.ellipsis,
                  //                 style: TextStyle(
                  //                   color: Color(0xffDDCC8C),
                  //                   fontSize: 15,
                  //                 ),
                  //               ),
                  //               padding: const EdgeInsetsDirectional.only(
                  //                   top: 5, start: 30),
                  //             )
                  //           ],
                  //         ),
                  //       ),

                  //       Container(
                  //           padding: const EdgeInsetsDirectional.only(
                  //               top: 40, start: 15),
                  //           child: GestureDetector(
                  //             onTap: () {
                  //               fav();
                  //             },
                  //             child: ic,
                  //           )), // هنحط func القلب هنا
                  //     ],
                  //   ),
                  // ),

                  SizedBox(
                    width: 30,
                  ),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 110,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "notifications");
                          },
                          icon: CircleAvatar(
                            radius: 17,
                            backgroundColor: Color(0xffDDCC8C),
                            child: Icon(
                              CupertinoIcons.bell,
                              size: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "user_profile");
                          },
                          icon: CircleAvatar(
                            radius: 17,
                            backgroundColor: Color(0xffDDCC8C),
                            child: Icon(
                              CupertinoIcons.person,
                              size: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: CircleAvatar(
                            radius: 25,
                            backgroundColor: Color(0xffDDCC8C),
                            child: Icon(
                              CupertinoIcons.home,
                              size: 20,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {},
                          icon: CircleAvatar(
                            radius: 17,
                            backgroundColor: Color(0xffDDCC8C),
                            child: Icon(
                              CupertinoIcons.text_bubble_fill,
                              size: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        IconButton(
                          onPressed: () {
                            Navigator.pushNamed(context, "favourite");
                          },
                          icon: CircleAvatar(
                            radius: 17,
                            backgroundColor: Color(0xffDDCC8C),
                            child: Icon(
                              CupertinoIcons.heart,
                              size: 17.0,
                              color: Colors.black,
                            ),
                          ),
                        )
                      ]),

                  // Container(
                  //   decoration: BoxDecoration(
                  //     color: Color(0xff69482E),
                  //     borderRadius: BorderRadius.circular(20.0),
                  //   ),
                  //   padding: EdgeInsetsDirectional.only(start: 20),
                  //
                  //   width: 300,
                  //   height: 50,
                  // ),
                  // bottomNavigationBar: NavigationBar(
                  //   destinations: [
                  //     NavigationDestination(icon: Icon(Icons.notifications), label: 'notification'),
                  //     NavigationDestination(icon: Icon(Icons.person), label: 'person'),
                  //     NavigationDestination(icon: Icon(Icons.home), label: 'home'),
                  //     NavigationDestination(icon: Icon(Icons.message), label: 'message'),
                  //     NavigationDestination(icon: Icon(Icons.favorite_border), label: 'heart'),

                  //   ],
                  // ),
                ]),
          ),
        );
      }),
    );
  }
}
