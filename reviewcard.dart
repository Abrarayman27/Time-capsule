// ignore_for_file: prefer_const_constructors, dead_code, prefer_const_literals_to_create_immutables, sort_child_properties_last

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class cardmodel extends StatelessWidget {
  const cardmodel(
      {super.key,
      required this.i1,
      required this.firstName,
      required this.lasttName,
      required this.rate,
      required this.rev});
  final Icon i1;

  final String firstName;
  final String lasttName;
  final double rate;
  final String rev;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Card(
          margin: EdgeInsets.only(left: 20),
          elevation: 0,
          color: Colors.transparent,
          child: ListTile(
            leading: DecoratedBox(
                decoration: BoxDecoration(
                    color: Color(0xFFA39467), shape: BoxShape.circle),
                child: i1),
            title: Text(
              "$firstName $lasttName",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Color(0xFFDDCC8C)),
            ),
            trailing: Container(
              padding: EdgeInsets.only(left: 10),
              width: 85,
              height: 35,
              decoration: BoxDecoration(
                  color: Color(0xFF69482E).withOpacity(0.5),
                  borderRadius: BorderRadius.all(Radius.elliptical(100, 70))),
              child: Row(
                children: [
                  Text("$rate",
                      style: TextStyle(fontSize: 16, color: Color(0xFFDDCC8C))),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(
                    CupertinoIcons.star,
                    color: Colors.black,
                  )
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 80),
          child: Text(
            rev,
            style: TextStyle(color: Color(0xFFDDCC8C), fontSize: 16),
          ),
        ),
       
      ],
    );
  }
}
