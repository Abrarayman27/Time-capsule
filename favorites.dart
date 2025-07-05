import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/Profile/user_profile.dart';
class favorite extends StatefulWidget {
  static const routeName = "favorite";

  @override
  State<favorite> createState() => _favoriteState();
}

class _favoriteState extends State<favorite> {
  List<QueryDocumentSnapshot> data = [];

  @override
  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    QuerySnapshot querySnapshot =
        await FirebaseFirestore.instance.collection("categories").get();
    setState(() {
      data.addAll(querySnapshot.docs);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('image/backgroung2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: GridView.builder(
          itemCount: data.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 160,
          ),
          itemBuilder: (context, i) {
            return SafeArea(
              child: Column(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.of(context).pop(const user_profile()),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                      child: const Icon(CupertinoIcons.back, size: 30),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const ListTile(
                    leading: Icon(
                      CupertinoIcons.heart,
                      size: 40,
                      color: Color(0xffEFDC96),
                    ),
                    title: Text(
                      "Favorites",
                      style: TextStyle(
                        fontSize: 30,
                        color: Color(0xffEFDC96),
                      ),
                    ),
                  ),
                  const Divider(
                    color: Color(0xffEFDC96),
                    indent: 25,
                    endIndent: 60,
                    height: 30,
                  ),
                  // Add your other widgets here
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}


// class favorite extends StatefulWidget {
//   static const routeName = "favorite";

//   @override
//   State<favorite> createState() => _favoriteState();
// }

// class _favoriteState extends State<favorite> {
//   List<QueryDocumentSnapshot> data = [];

//   @override
//   void initState() {
//     super.initState();
//     getData();
//   }

//   getData() async {
//     QuerySnapshot querySnapshot =
//         await FirebaseFirestore.instance.collection("categories").get();
//     setState(() {
//       data.addAll(querySnapshot.docs);
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: GridView.builder(
//         itemCount: data.length,
//         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//           crossAxisCount: 2,
//           mainAxisExtent: 160,
//         ),
//         itemBuilder: (context, i) {
//           return Container(
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage('image/backgroung2.jpg'),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: SafeArea(
//               child: Column(
//                 children: [
//                   GestureDetector(
//                     onTap: () => Navigator.of(context).pop(const user_profile()),
//                     child: Container(
//                       alignment: Alignment.centerLeft,
//                       padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
//                       child: const Icon(CupertinoIcons.back, size: 30),
//                     ),
//                   ),
//                   const SizedBox(height: 10),
//                   const ListTile(
//                     leading: Icon(
//                       CupertinoIcons.heart,
//                       size: 40,
//                       color: Color(0xffEFDC96),
//                     ),
//                     title: Text(
//                       "Favorites",
//                       style: TextStyle(
//                         fontSize: 30,
//                         color: Color(0xffEFDC96),
//                       ),
//                     ),
//                   ),
//                   const Divider(
//                     color: Color(0xffEFDC96),
//                     indent: 25,
//                     endIndent: 60,
//                     height: 30,
//                   ),
//                   // Add your other widgets here
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }










// // import 'package:cloud_firestore/cloud_firestore.dart';
// // import 'package:flutter/cupertino.dart';
// // import 'package:flutter/material.dart';
// // import 'package:timecapsule/Profile/user_profile.dart';

// // // ignore: camel_case_types
// // class favorite extends StatefulWidget {
// //   static const routeName = "favorite";
  
// //   const favorite({
// //     super.key,

// //   });

// //   @override
// //   State<favorite> createState() => _favoriteState();
// // }

// // class _favoriteState extends State<favorite> {

// //   List<QueryDocumentSnapshot> data=[];
// //   getData() async{
// //   QuerySnapshot querySnapshot = await FirebaseFirestore.instance.collection("categories").get();
// //   data.addAll(querySnapshot.docs);
// //   }
// //   @override
// //   // void setState(VoidCallback fn) {
// //   //   // TODO: implement setState
// //   //   super.setState(fn);
// //   // }
  
// //   @override
// //   Widget build(BuildContext context) {
// //     debugShowCheckedModeBanner: false;
// //     return Scaffold(
// //       body: GridView.builder(
// //         itemCount:  data.length,
// //         gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisExtent: 160),
// //         itemBuilder: (context,i){
// //             return Stack(alignment: Alignment.center,
// //             children: <Widget>[
// //           const Positioned.fill(
// //             child: Image(
// //               image: AssetImage('image/backgroung2.jpg'),
// //               fit: BoxFit.cover,
// //             ),
// //           ),
// //             SafeArea(
// //             child: Column(children: [
// //               GestureDetector(
// //                 onTap: () => Navigator.of(context).pop(const user_profile()),
// //                 child: Container(
// //                     alignment: Alignment.centerLeft,
// //                     padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
// //                     child: const Icon(CupertinoIcons.back,size: 30,)),
// //               ),
// //               const SizedBox(
// //                 height: 10,
// //               ),
// //               const ListTile(
// //                 leading: Icon(
// //                   CupertinoIcons.heart,
// //                   size: 40,
// //                   color: Color(0xffEFDC96),
// //                 ),
// //                 title: Text(
// //                   "Favorites",
// //                   style: TextStyle(
// //                     fontSize: 30,
// //                     color: Color(0xffEFDC96),
// //                   ),
// //                 ),
// //               ),
// //               const Divider(
// //                 color: Color(0xffEFDC96),
// //                 indent: 25,
// //                 endIndent: 60,
// //                 height: 30,
// //               ),
        
            
            
// //         ]
// //           ))
// //         ]
// //         );
          
// //   },
// //     ),
// //     );
// //   }
// // }















    
// //           // SafeArea(
// //           //   child: Column(children: [
// //           //     GestureDetector(
// //           //       onTap: () => Navigator.of(context).pop(const user_profile()),
// //           //       child: Container(
// //           //           alignment: Alignment.centerLeft,
// //           //           padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
// //           //           child: const Icon(CupertinoIcons.back,size: 30,)),
// //           //     ),
// //           //     const SizedBox(
// //           //       height: 10,
// //           //     ),
// //           //     const ListTile(
// //           //       leading: Icon(
// //           //         CupertinoIcons.heart,
// //           //         size: 40,
// //           //         color: Color(0xffEFDC96),
// //           //       ),
// //           //       title: Text(
// //           //         "Favorites",
// //           //         style: TextStyle(
// //           //           fontSize: 30,
// //           //           color: Color(0xffEFDC96),
// //           //         ),
// //           //       ),
// //           //     ),
// //           //     const Divider(
// //           //       color: Color(0xffEFDC96),
// //           //       indent: 25,
// //           //       endIndent: 60,
// //           //       height: 30,
// //           //     ),
// //           //     Container(
// //           //       decoration: BoxDecoration(
// //           //         borderRadius: BorderRadius.circular(55),
// //           //         color: const Color(0xb3EFDC96),
// //           //       ),
// //           //       height: 95,
// //           //       padding: const EdgeInsets.all(15),
// //           //       margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
// //           //       child: const ListTile(
// //           //         leading:CircleAvatar(
// //           //           radius: 35,
// //           //           backgroundImage: AssetImage("image/royal2.png"),
// //           //         ),
                  
// //           //         title: Text(
// //           //           "Royal Jewelry",
// //           //           style: TextStyle(
// //           //             fontSize: 15,
// //           //             color: Color(0xff6C4D32),
// //           //           ),
// //           //         ),
// //           //         trailing: Icon(
// //           //           CupertinoIcons.heart_fill,
// //           //           size: 40,
// //           //           color: Colors.red,
// //           //         ),
// //           //       ),
// //           //     ),
// //           //     Container(
// //           //       decoration: BoxDecoration(
// //           //         borderRadius: BorderRadius.circular(55),
// //           //         color: const Color(0xb3EFDC96),
// //           //       ),
// //           //       height: 95,
// //           //       padding: const EdgeInsets.all(15),
// //           //       margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
// //           //       child: const ListTile(
// //           //         leading:CircleAvatar(
// //           //           radius: 35,
// //           //           backgroundImage: AssetImage("image/alexlibrary.jpg"),
// //           //         ),
                  
                  
// //           //         title: Text(
// //           //           "Bibliotheca of Alexandria",
// //           //           style: TextStyle(
// //           //             fontSize: 15,
// //           //             color: Color(0xff6C4D32),
// //           //           ),
// //           //         ),
// //           //         trailing: Icon(
// //           //           CupertinoIcons.heart_fill,
// //           //           size: 40,
// //           //           color: Colors.red,
// //           //         ),
// //           //       ),
// //           //     ),
// //           //     Container(
// //           //       decoration: BoxDecoration(
// //           //         borderRadius: BorderRadius.circular(55),
// //           //         color: const Color(0xb3EFDC96),
// //           //       ),
// //           //       height: 95,
// //           //       padding: const EdgeInsets.all(15),
// //           //       margin: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
// //           //       child: const ListTile(
// //           //         leading:CircleAvatar(
// //           //           radius: 35,
// //           //           backgroundImage: AssetImage("image/shelter.jpg"),
// //           //         ),
// //           //         title: Text(
// //           //           "shelter",
// //           //           style: TextStyle(
// //           //             fontSize: 15,
// //           //             color: Color(0xff6C4D32),
// //           //           ),
// //           //         ),
// //           //         trailing: Icon(
// //           //           CupertinoIcons.heart_fill,
// //           //           size: 40,
// //           //           color: Colors.red,
// //           //         ),
// //           //       ),
// //           //     ),
// //           //   ]),
// //           // )