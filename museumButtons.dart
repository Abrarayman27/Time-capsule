// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
class museumButtons extends StatefulWidget {
  const museumButtons(this.onPressed1,this.text,this.width,[this.color=const Color(0xFFDDCC8C),this.textcolor=const Color(0xFF69482E)]);
  final String text;
  final double width;
  final Color color; 
    final Color textcolor; 

    final VoidCallback onPressed1;

  @override
  State<museumButtons> createState() => _museumButtonsState();
}

class _museumButtonsState extends State<museumButtons> {
  @override
  Widget build(BuildContext context) {
  
    return ElevatedButton(
                            onPressed: () {widget.onPressed1();},
                            style: ElevatedButton.styleFrom(
                                backgroundColor:
                                     widget.color,
                                fixedSize: Size.fromWidth(widget.width),
                                side: BorderSide(
                                    color: Color(0xFF69482E), width: 2)),
                            // style: ElevatedButton.styleFrom(padding: EdgeInsets.fromLTRB(30, 0,0, 30)),
                            child: Text(
                            widget.text,
                              style: TextStyle(
                                color: widget.textcolor,
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                          );
  }
}



