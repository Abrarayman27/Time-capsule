import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/Profile/user_profile.dart';

// ignore: camel_case_types
class app_language extends StatelessWidget {
  static const routeName = "app_language";
  const app_language({
    super.key,
  });

  @override
  
  Widget build(BuildContext context) {
debugShowCheckedModeBanner: false;
    return Scaffold(
      
      body: Stack(children: <Widget>[
        const Positioned.fill(
          
          child: Image(
            image: AssetImage('image/backgroung2.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        SafeArea(
          child: Column(
            children: [
              GestureDetector(
                onTap: () => Navigator.of(context).pop(const user_profile()),
                child: Container(
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
                    child: const Icon(CupertinoIcons.back)),
              ),
              const SizedBox(
                height: 10,
              ),
              const ListTile(
                leading: Icon(
                  CupertinoIcons.globe,
                  size: 40,
                  color: Color(0xffEFDC96),
                ),
                title: Text(
                  "Languages",
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
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(55),
                  color: const Color(0xb3EFDC96),
                ),
                height: 80,
                padding: const EdgeInsets.all(15),
                margin:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: const ListTile(
                  leading: Icon(
                    CupertinoIcons.search,
                    size: 40,
                    color: Color(0xff6C4D32),
                  ),
                  title: Text(
                    "Select your prefered Language",
                    style: TextStyle(
                      fontSize: 15,
                      color: Color(0xff6C4D32),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Arabic",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffEFDC96),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "English",
                style: TextStyle(
                  fontSize: 25,
                  color: Color(0xffEFDC96),
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
