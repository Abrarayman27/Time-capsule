import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter/widgets.dart';
// import 'package:timecapsule/Profile/app_language.dart';
import 'package:timecapsule/Profile/contactUs.dart';
import 'package:timecapsule/Profile/favorites.dart';
import 'package:timecapsule/Profile/notifications.dart';
import 'package:timecapsule/firstscreens/signin.dart';
import 'package:timecapsule/models/home.dart';

// ignore: camel_case_types
class user_profile extends StatelessWidget {
  static const routeName = "user_profile";
  const user_profile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // use Stack to make the image stretch to the full screen.
    return MaterialApp(
      routes: {
        "home":(context) => const home(),
        "contact":(context) => const ContactUsPage(),
                "signin":(context) => const signin(),

        favorite.routeName: (context) => favorite(),
        notifications.routeName: (context) => const notifications(),
      },
      home: Builder(
        builder: (context) {
          return Scaffold(
            body: Stack(
              children: <Widget>[
                const Positioned.fill(
                  //
                  child: Image(
                    image: AssetImage('image/backgroung2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(55),
                          color: const Color(0x66EFDC96),
                        ),
                        height: 170,
                        padding: const EdgeInsets.all(15),
                        margin: const EdgeInsets.symmetric(
                            vertical: 20, horizontal: 20),
                        child: const Row(
                          children: [
                            Column(
                              children: [
                                SizedBox(
                                  height: 30,
                                ),
                                Text(
                                  "Robert Hemsworth",
                                  style: TextStyle(
                                    color: Color(0xffEFDC96),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "Robert2002@gmail.com",
                                  style: TextStyle(
                                      color: Color(0xff6C4D32),
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600),
                                )
                              ],
                            ),
                            SizedBox(
                              width: 45,
                            ),
                            CircleAvatar(
                              radius: 55,
                              backgroundImage: AssetImage("image/profile.jpg"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(16.0),
                        width: double.infinity,
                        child: Column(children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.pushNamed(context, "home");
                            }
                            , 
                            child: const ListTile(
                              leading: Icon(
                                CupertinoIcons.home,
                                size: 40,
                                color: Color(0xffEFDC96),
                              ),
                              title: Text(
                                "Home",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xffEFDC96),
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color(0xffEFDC96),
                            indent: 25,
                            endIndent: 60,
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () => Navigator.of(context)
                                .pushNamed(notifications.routeName),
                            child: const ListTile(
                              leading: Icon(
                                CupertinoIcons.bell,
                                size: 40,
                                color: Color(0xffEFDC96),
                              ),
                              title: Text(
                                "Notifications",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xffEFDC96),
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color(0xffEFDC96),
                            indent: 25,
                            endIndent: 60,
                            height: 30,
                          ),
                          GestureDetector(
                            // onTap: () => Navigator.of(context)
                            //     .pushNamed(List),
                            child: const ListTile(
                              leading: Icon(
                                CupertinoIcons.list_bullet,
                                size: 40,
                                color: Color(0xffEFDC96),
                              ),
                              title: Text(
                                "Wish List",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xffEFDC96),
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color(0xffEFDC96),
                            indent: 25,
                            endIndent: 60,
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () =>
                                Navigator.of(context).pushNamed(favorite.routeName),
                            child: const ListTile(
                              leading: Icon(
                                CupertinoIcons.heart,
                                size: 40,
                                color: Color(0xffEFDC96),
                              ),
                              title: Text(
                                "Favorites",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xffEFDC96),
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color(0xffEFDC96),
                            indent: 25,
                            endIndent: 60,
                            height: 30,
                          ),
                          GestureDetector(
                            onTap: () { Navigator.pushNamed(context, "contact");
                            },
                            child: const ListTile(
                              leading: Icon(
                                CupertinoIcons.headphones,
                                size: 40,
                                color: Color(0xffEFDC96),
                              ),
                              title: Text(
                                "Contact Us",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xffEFDC96),
                                ),
                              ),
                            ),
                          ),
                          const Divider(
                            color: Color(0xffEFDC96),
                            indent: 25,
                            endIndent: 60,
                            height: 30,
                          ),
                          // GestureDetector(
                          //   onTap: () => Navigator.of(context)
                          //       .pushNamed(app_language.routeName),
                          //   child: const ListTile(
                          //     leading: Icon(
                          //       CupertinoIcons.globe,
                          //       size: 40,
                          //       color: Color(0xffEFDC96),
                          //     ),
                          //     title: Text(
                          //       "Languages",
                          //       style: TextStyle(
                          //         fontSize: 25,
                          //         color: Color(0xffEFDC96),
                          //       ),
                          //     ),
                          //   ),
                          // ),
                          // const Divider(
                          //   color: Color(0xffEFDC96),
                          //   indent: 25,
                          //   endIndent: 60,
                          //   height: 30,
                          // ),
                          GestureDetector(
                            onTap: () async{
                                await GoogleSignIn().signOut();
                                await FirebaseAuth.instance.signOut();
                                Navigator.pushNamed(context, "signin");
                            },
                              child: const ListTile(
                                leading: Icon(
                                CupertinoIcons.rectangle_arrow_up_right_arrow_down_left ,
                                size: 40,
                                color: Color(0xffEFDC96)),
                                  title: Text(
                                "Log out",
                                style: TextStyle(
                                  fontSize: 25,
                                  color: Color(0xffEFDC96),
                                ),
                              ),
                              ),
                            
                                                    
                              
                                                        ),
                            
                        ]),
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        }
      ),
    );
  }
}
