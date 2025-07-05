import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/Profile/app_language.dart';
import 'package:timecapsule/Profile/favorites.dart';
import 'package:timecapsule/Profile/user_profile.dart';
import 'package:timecapsule/firebase_options.dart';
import 'package:timecapsule/firstscreens/signin.dart';
import 'package:timecapsule/models/home.dart';
import 'package:timecapsule/firstscreens/question.dart';
// import 'package:flutter_complete_guide/firebase_options.dart';


// import 'dart:html';
// void main(){
//   debugShowCheckedModeBanner: false;
//   runApp( home());
  
//   //museum()
// }
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options:DefaultFirebaseOptions.currentPlatform,);
//asynchronously initializes Firebase
//select the default Firebase options for the current platform the app is running on.
  runApp( const MyApp());
  debugShowCheckedModeBanner: false;
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override

  // void initState() {
  //   FirebaseAuth.instance.authStateChanges().listen((User?user) {
  //   if(user==null){
  //     print("=======================user is currently signed out!");
  //   }
  //   else{
  //     print("======================user is signed in");
  //   }
  //    });
  
  //   super.initState();
  // }
  @override
  Widget build(BuildContext context) {
    return 
      MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "TimeCapsule",
      
      home:FirebaseAuth.instance.currentUser==null ?const signin():const home(),
      routes: {
        user_profile.routeName: (context) => const user_profile(),
        
        app_language.routeName: (context) => const app_language(),
        home.routeName: (context) => const home(),
        // flash.routeName: (context) => const flash(),

      },
    );
  }
}