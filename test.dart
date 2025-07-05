// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:timecapsule/firstscreens/signin.dart';

// void main() {
//   runApp(SignupPage2());
// }

// class SignupPage2 extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();
//   final TextEditingController confirmPasswordController =TextEditingController();

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       routes: {
//         "signin": (context) => signin()
//       },
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: SafeArea(
//           child: Container(
//             decoration: const BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("image/backgroung2.jpg"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: SingleChildScrollView(
//               child: Container(
//                 padding: const EdgeInsets.symmetric(horizontal: 30),
//                 height: MediaQuery.of(context).size.height - 20,
//                 width: double.infinity,
//                 child: Stack(
//                   children: [
//                     const Padding(
//                         padding: EdgeInsets.symmetric(horizontal: 40)),
//                     const SizedBox(
//                       height: 30,
//                     ),
//                     Positioned(
//                       left: 0,
//                       right: 10,
//                       top: 85,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: BorderRadius.circular(70),
//                           color: const Color(0xFFDDCC8C).withOpacity(0.4),
//                         ),
//                         width: 170,
//                         height: 600,
//                       ),
//                     ),
//                     Positioned(
//                       left: 0,
//                       right: 10,
//                       top: 113,
//                       child: Container(
//                         decoration: BoxDecoration(
//                           borderRadius: const BorderRadius.only(
//                               bottomLeft: Radius.circular(70),
//                               bottomRight: Radius.circular(70),
//                               topLeft: Radius.circular(40),
//                               topRight: Radius.circular(40)),
//                           color: const Color(0xFF69482E).withOpacity(0.9),
//                         ),
//                         width: 560,
//                         height: 600,
//                       ),
//                     ),
//                     Column(
//                       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                       crossAxisAlignment: CrossAxisAlignment.center,
//                       children: <Widget>[
//                         const Column(
//                           children: <Widget>[
//                             SizedBox(height: 120.0),
//                             Text(
//                               "SIGN UP",
//                               style: TextStyle(
//                                   fontSize: 30, color: Color(0xFFDDCC8C)),
//                             ),
//                             SizedBox(
//                               height: 0,
//                             ),
//                           ],
//                         ),
//                         Column(
//                           children: <Widget>[
//                             SizedBox(
//                               width: 310,
//                               child: TextField(
//                                 controller: emailController,
//                                 decoration: InputDecoration(
//                                     hintText: "Email address / phone number",
//                                     hintStyle: TextStyle(
//                                       color: Color(0xFFDDCC8C),
//                                     ),
//                                     prefixIcon: Icon(CupertinoIcons.mail,
//                                         color: Color(0xFFDDCC8C))),
//                                 keyboardType: TextInputType.emailAddress,
//                               ),
//                             ),
//                             SizedBox(height: 20),
//                             SizedBox(
//                               width: 310,
//                               child: TextField(
//                                 controller: passwordController,
//                                 decoration: InputDecoration(
//                                   hintText: "Password",
//                                   hintStyle:
//                                       TextStyle(color: Color(0xFFDDCC8C)),
//                                   prefixIcon: Icon(CupertinoIcons.lock,
//                                       color: Color(0xFFDDCC8C)),
//                                   suffixIcon: Icon(CupertinoIcons.eye,
//                                       color: Color(0xFFDDCC8C)),
//                                 ),
//                                 keyboardType: TextInputType.phone,
//                                 obscureText: true,
//                               ),
//                             ),
//                             SizedBox(height: 20),
//                             SizedBox(
//                               width: 310,
//                               child: TextField(
//                                 controller: confirmPasswordController,
//                                 decoration: InputDecoration(
//                                   hintText: "Confirm Password",
//                                   hintStyle:
//                                       TextStyle(color: Color(0xFFDDCC8C)),
//                                   prefixIcon: Icon(CupertinoIcons.lock,
//                                       color: Color(0xFFDDCC8C)),
//                                   suffixIcon: Icon(
//                                     CupertinoIcons.eye,
//                                     color: Color(0xFFDDCC8C),
//                                   ),
//                                 ),
//                                 keyboardType: TextInputType.phone,
//                                 obscureText: true,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Container(
//                           padding: const EdgeInsets.only(top: 0, left: 3),
//                           child: SizedBox(
//                             height: 60,
//                             child: ElevatedButton(
//                               onPressed: () async {
//                                 final user = FirebaseAuth.instance.currentUser;
// if (user != null) {
//     // Name, email address, and profile photo URL
//     final name = user.displayName;
//     final email = user.email;
//     final photoUrl = user.photoURL;

//     // Check if user's email is verified
//     final emailVerified = user.emailVerified;

//     // The user's ID, unique to the Firebase project. Do NOT use this value to
//     // authenticate with your backend server, if you have one. Use
//     // User.getIdToken() instead.
//     final uid = user.uid;
// }
//                               },
//                               child: Center(
//                                 child: Text(
//                                   "Sign up",
//                                   style: TextStyle(
//                                     fontSize: 20,
//                                     color: Color(0xff69482E),
//                                   ),
//                                 ),
//                               ),
//                               style: ElevatedButton.styleFrom(
//                                 fixedSize: Size.fromWidth(150),
//                                 shape: const StadiumBorder(),
//                                 padding: const EdgeInsets.symmetric(
//                                     vertical: 16),
//                                 backgroundColor:
//                                     const Color(0xFFDDCC8C).withOpacity(0.7),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(
//                           height: 55,
//                         ),
//                         Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: <Widget>[
//                             const Text(
//                               "Already have an account?",
//                               style: TextStyle(color: Color(0xFFDDCC8C)),
//                             ),
//                             TextButton(
//                               onPressed: () {
//                                 Navigator.pushNamed(context, "signin");
//                               },
//                               child: const Text("Sign in",
//                                   style: TextStyle(
//                                       color: Color(0xFFDDCC8C),
//                                       fontWeight: FontWeight.bold)),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }