// import 'package:flutter/material.dart';
// import 'package:timecapsule/greek/greekphoto2.dart';
// import 'package:timecapsule/greek/greekphoto3.dart';
// import 'package:timecapsule/greek/marbel.dart';
// import 'package:timecapsule/greek/museum.dart';
// import 'package:timecapsule/greek/vase.dart';
// import 'package:flutter_tts/flutter_tts.dart';
// import 'uni2.dart';

// class golds extends StatefulWidget {
//   @override
//   goldsState createState() => goldsState();
// }

// class goldsState extends State<golds> {
  
//   FlutterTts flutterTts = FlutterTts();
  
//   String paragraph =
//       "Gold finger ring engraved with an image of Hermes The broad oval bezel of this heavy gold ring is engraved with an intaglio showing the youthful messenger-god Hermes balancing on his left leg as he fastens a wing to his raised right foot. The god wears a short mantle that encircles his neck and hangs down his back. Winged sandals or boots are a standard attribute of Hermes, but it is unusual to find the wings attached to the figure's ankles rather than to some form of footwear.Since its first publication over a century ago this ring has been associated with a notable sculptural type in monumental Greek sculpture the Sandal-Binder Hermes traditionally ascribed to the sculptor Lysippos. Echoes of this particular composition showing the god tying or untying his winged sandal appear in decorative arts as well notably on coins of Sybrita in Crete dated to the late fourth century B.C. Our ring however can be stylistically grouped with a handful of accomplished late Classical gold rings from Magna Graecia which is in fact the alleged findplace of our piece Tarentum in southern Italy.";
      
//   Future<void> speak() async {
//     await flutterTts.setLanguage('en-US');
//     await flutterTts.setSpeechRate(1.0);
//     await flutterTts.setPitch(1.0);
//     await flutterTts.speak(paragraph);
//   }

//   Icon ic = Icon(CupertinoIcons.heart, size: 30);
//   bool state = false;
//   Icon ic2 = Icon(
//     CupertinoIcons.heart_solid,
//     size: 30,
//     color: Color.fromARGB(255, 206, 38, 26),
//   );
//   Icon ic3 = Icon(CupertinoIcons.heart, size: 30);

//   void fav() {
//     setState(() {
//       if (state == false) {
//         ic = ic2;
//         state = true;
//       } else {
//         ic = ic3;
//         state = false;
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         "greekphoto2": (context) => greekphoto2(),
//         "greekphoto3": (context) => greekphoto3(),
//         "greekphoto1": (context) => uni(),
//         "vase": (context) => vase(),
//         "marble": (context) => marble(),
//         "museum": (context) => museum(),
//       },
//       debugShowCheckedModeBanner: false,
//       home: Builder(builder: (context) {
//         return Scaffold(
//           body: Stack(
//             children: [
//               SafeArea(
//                 child: Container(
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage("image/backgroung2.jpg"),
//                       fit: BoxFit.cover,
//                     ),
//                   ),
//                   child: ListView(
//                     children: [
//                       Stack(
//                         children: [
//                           Container(
//                             width: 450,
//                             height: 350,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.only(
//                                 bottomLeft: Radius.circular(50),
//                                 bottomRight: Radius.circular(50),
//                               ),
//                               image: DecorationImage(
//                                 image: AssetImage("image/gold.jpg"),
//                                 fit: BoxFit.cover,
//                               ),
//                             ),
//                             child: Row(
//                               crossAxisAlignment: CrossAxisAlignment.end,
//                               children: const [
//                                 SizedBox(
//                                   width: 20.0,
//                                 ),
//                                 SizedBox(width: 5),
//                               ],
//                             ),
//                           ),
//                           FloatingActionButton(
//                             onPressed: speak,
//                             tooltip: 'Read',
//                             child: Icon(Icons.volume_up),
//                           ),
//                         ],
//                       ),
//                       const SizedBox(
//                         height: 15.0,
//                       ),
//                       SizedBox(
//                         width: 400,
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 35,
//                             ),
//                             Container(
//                               height: 48,
//                               width: 48,
//                               decoration: BoxDecoration(
//                                 color: Color(0xFFA39467),
//                                 shape: BoxShape.circle,
//                               ),
//                               child: Center(
//                                 child: Icon(
//                                   CupertinoIcons.doc_text,
//                                   size: 40,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "the story of this piece",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                                 color: Color(0xFFDDCC8C),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       Container(
//                         padding: EdgeInsets.only(left: 20, right: 20),
//                         child: Text(
//                           paragraph,
//                           style: TextStyle(
//                             fontSize: 16,
//                             color: Color(0xFFDDCC8C),
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       SizedBox(
//                         width: 450,
//                         child: Row(
//                           children: const [
//                             SizedBox(
//                               width: 20,
//                             ),
//                             SizedBox(
//                               width: 10,
//                             ),
//                             Text(
//                               "Pictures",
//                               style: TextStyle(
//                                 fontWeight: FontWeight.bold,
//                                 fontSize: 20,
//                                 color: Color(0xFFDDCC8C),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       SizedBox(
//                         height: 10,
//                       ),
//                       SingleChildScrollView(
//                         scrollDirection: Axis.horizontal,
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               width: 30,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.pushNamed(context, "greekphoto1");
//                               },
//                               child: ClipRRect(
//                                 borderRadius:
//                                     BorderRadius.circular(100 / 2 - 100 / 10),
//                                 child: Image.asset(
//                                   "image/Marble.jpg",
//                                   width: 100,
//                                   height: 100,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(width: 30),
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.pushNamed(context, "greekphoto2");
//                               },
//                               child: ClipRRect(
//                                 borderRadius:
//                                     BorderRadius.circular(100 / 2 - 100 / 10),
//                                 child: Image.asset(
//                                   "image/p11.jpg",
//                                   width: 100,
//                                   height: 100,
//                                   fit: BoxFit.cover,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               width: 30,
//                             ),
//                             GestureDetector(
//                               onTap: () {
//                                 Navigator.pushNamed(context, "greekphoto1");
//                               },
//                               child: ClipRRect(
//                                 borderRadius:
//                                     BorderRadius.circular(100 / 2 - 100 / 10),)),
//                     )),
//               ],
//             ),
//           );
//         }));
//   }
// }
