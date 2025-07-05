// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';
import 'package:timecapsule/firstscreens/calender.dart';
import 'package:timecapsule/models/home.dart';
import 'package:timecapsule/firstscreens/question.dart';
class question extends StatefulWidget {
  const question({super.key});

  @override
  State<question> createState() => _questionState();
}

class _questionState extends State<question> {
  bool a = false;
  bool s = false;
  bool r = false;
  bool g = false;
  bool l = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: MaterialApp(
        routes: {
          "calendar":(context) => calendar(),
          "home":(context) => home(),
        },
          debugShowCheckedModeBanner: false,
          home: Builder(
            builder: (context) {
              return Scaffold(
                  appBar: AppBar(
                    flexibleSpace:
                        Image.asset('image/backgroung2.jpg', fit: BoxFit.cover),
                    toolbarHeight: 100,
                    title: Center(
                      child: Text(
                        'Choose Mesuem You Planned To visit',
                        style: TextStyle(
                            color: Color(0XffEFDC96),
                            fontSize: 19,
                            fontWeight: FontWeight.bold),
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
                    padding: EdgeInsets.all(55),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 20),
                            width: 300,
                            height: 70,
                            child: Row(
                              children: [
                                Checkbox(
                                    value: a,
                                    onChanged: (val) {
                                      setState(() {
                                        a = val!;
                                      });
                                    }),
                                Text(
                                  'Alex Library',
                                  style: TextStyle(
                                      color: Color(0xff69482E), fontSize: 16),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('image/alexlibrary.jpg'),
                                  radius: 50,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffDDCC8C),
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 20),
                            width: 300,
                            height: 70,
                            // padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Checkbox(
                                    value: s,
                                    onChanged: (val) {
                                      setState(() {
                                        s = val!;
                                      });
                                    }),
                                Text(
                                  'Shelter',
                                  style: TextStyle(
                                      color: Color(0xff69482E), fontSize: 16),
                                ),
                                SizedBox(
                                  width: 65,
                                ),
                                CircleAvatar(
                                  backgroundImage: AssetImage('image/shelter.jpg'),
                                  radius: 50,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffDDCC8C),
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 20),
                            width: 300,
                            height: 70,
              
                            //padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Checkbox(
                                    value: r,
                                    onChanged: (val) {
                                      setState(() {
                                        r = val!;
                                      });
                                    }),
                                Text(
                                  'Royal Jewelry',
                                  style: TextStyle(
                                      color: Color(0xff69482E), fontSize: 16),
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                CircleAvatar(
                                  backgroundImage: AssetImage('image/royal.jpeg'),
                                  radius: 50,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffDDCC8C),
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 20),
                            width: 300,
                            height: 70,
              
                            // padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Checkbox(
                                    value: g,
                                    onChanged: (val) {
                                      setState(() {
                                        g = val!;
                                      });
                                    }),
                                Text(
                                  'Greek Roman',
                                  style: TextStyle(
                                      color: Color(0xff69482E), fontSize: 16),
                                ),
                                SizedBox(
                                  width: 25,
                                ),
                                CircleAvatar(
                                  backgroundImage: AssetImage('image/greek.jpg'),
                                  radius: 50,
                                ),
                              ],
                            ),
              
                            decoration: BoxDecoration(
                              color: Color(0xffDDCC8C),
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            padding: EdgeInsetsDirectional.only(start: 20),
                            width: 300,
                            height: 70,
                            // padding: const EdgeInsets.all(10.0),
                            child: Row(
                              children: [
                                Checkbox(
                                    value: l,
                                    onChanged: (val) {
                                      setState(() {
                                        l = val!;
                                      });
                                    }),
                                Text(
                                  'Alex Library',
                                  style: TextStyle(
                                      color: Color(0xff69482E), fontSize: 16),
                                ),
                                SizedBox(
                                  width: 30,
                                ),
                                CircleAvatar(
                                  backgroundImage:
                                      AssetImage('image/alexlibrary.jpg'),
                                  radius: 50,
                                ),
                              ],
                            ),
                            decoration: BoxDecoration(
                              color: Color(0xffDDCC8C),
                              borderRadius: BorderRadius.circular(60.0),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Padding(
                                  padding: EdgeInsetsDirectional.only(start: 60)),
                              ElevatedButton(
                                onPressed: () {
                              Navigator.pushNamed(context, "calendar");

                                },
                                child: const Text('Done',
                                    style: TextStyle(
                                      color: Color(0xff69482E),
                                    )),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffDDCC8C),
                                ),
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.pushNamed(context, "home");
                                },
                                child: const Text('Skip',
                                    style: TextStyle(
                                      color: Color(0xff69482E),
                                    )),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Color(0xffDDCC8C),
                                ),
                              )
                            ],
                          ),
                        ]),
                  ));
            }
          )),
    );
  }
}

