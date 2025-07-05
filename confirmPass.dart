// 
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/firstscreens/signin.dart';


class Confirmpass extends StatelessWidget {
  const Confirmpass({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        
        "signin": (context) => const signin(),
        
      },
      debugShowCheckedModeBanner: false,
      home: Builder(builder: (context) {
        return Scaffold(
          // backgroundColor: const Color.fromARGB(105, 77, 50, 1),
          body: SafeArea(
            child: Container(
              decoration: const BoxDecoration(
                // borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                image: DecorationImage(
                  image: AssetImage("image/backgroung2.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
              child: SingleChildScrollView(
                child: Container(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    height: MediaQuery.of(context).size.height - 20,
                    width: double.infinity,
                    child: Container(
                      child: Stack(
                        children: [
                          const Padding(
                              padding: EdgeInsets.symmetric(horizontal: 40)),
                          const SizedBox(
                            height: 30,
                          ),
                          Positioned(
                            left: 0,
                            right: 10,
                            top: 85,
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(70),
                                color: const Color(0xFFDDCC8C).withOpacity(0.4),
                              ),
                              width: 170,
                              height: 600,
                            ),
                          ),
                          Positioned(
                            left: 0,
                            right: 10,
                            top: 113,
                            child: Container(
                              decoration: BoxDecoration(
                                // borderRadius: BorderRadius.circular(40),
                                borderRadius: const BorderRadius.only(
                                    bottomLeft: Radius.circular(70),
                                    bottomRight: Radius.circular(70),
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(40)),

                                color: const Color(0xFF69482E).withOpacity(0.9),
                              ),
                              width: 560,
                              height: 600,
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Column(
                                children: <Widget>[
                                  SizedBox(height: 120.0),
                                  Text(
                                    "New Password",
                                    style: TextStyle(
                                        fontSize: 30, color: Color(0xFFDDCC8C)),
                                  ),
                                  SizedBox(
                                    height: 50,
                                  ),
                                ],
                              ),
                              const Column(
                                children: <Widget>[
                                  SizedBox(
                                    width: 310,
                                    child: TextField(
                                      decoration: InputDecoration(
                                          hintText: "New password ",
                                          hintStyle: TextStyle(
                                            color: Color(0xFFDDCC8C),
                                          ),
                                          prefixIcon: Icon(
                                            CupertinoIcons.lock,
                                            color: Color(0xFFDDCC8C),
                                          ),suffixIcon: Icon(CupertinoIcons.eye,
                                            color: Color(0xFFDDCC8C)),),
                                          
                                      keyboardType: TextInputType.number,
                                    ),
                                  ),
                                  SizedBox(height: 20),
                                  SizedBox(
                                    width: 310,
                                    child: TextField(
                                      decoration: InputDecoration(
                                        hintText: "Confirm Password",
                                        hintStyle:
                                            TextStyle(color: Color(0xFFDDCC8C)),
                                        prefixIcon: Icon(
                                          CupertinoIcons.lock,
                                          color: Color(0xFFDDCC8C),
                                        ),
                                        suffixIcon: Icon(CupertinoIcons.eye,
                                            color: Color(0xFFDDCC8C)),
                                      ),
                                      keyboardType: TextInputType.phone,
                                      obscureText: true,
                                    ),
                                  ),
                                  SizedBox(height: 30),
                                ],
                              ),
                              
                              Container(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 3),
                                  child: SizedBox(
                                    height: 60,
                                    child: ElevatedButton(
                                      onPressed: () {
                                        Navigator.pushNamed(context, "signin");
                                      },
                                      style: ElevatedButton.styleFrom(
                                        fixedSize: const Size.fromWidth(150),
                                        shape: const StadiumBorder(),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16),
                                        backgroundColor: const Color(0xFFDDCC8C).withOpacity(0.7),
                                      ),
                                      child: const Text(
                                        "Continue",
                                        style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff69482E)),
                                      ),
                                    ),
                                  )),
                              
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ),
          ),
        );
      }),
    );
  }
}
