// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:timecapsule/firstscreens/confirmPass.dart';
import 'package:firebase_auth/firebase_auth.dart';

void main() {
  runApp(const verification());
}

class verification extends StatelessWidget {
  const verification({super.key});

  //get codeOne => null;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,

      routes: {
        "confirm":(context) => Confirmpass()
      },
      home: Builder(
        builder: (context) {
          return Scaffold(
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
                  // width: double.infinity,
                  child: Container(
                    child: Stack(children: [
                      const Padding(padding: EdgeInsets.symmetric(horizontal: 40)),
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
                      Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsetsDirectional.only(top: 150,start: 10),
                              child: Text(
                                  'Enter code',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Color(0xFFDDCC8C),
                                  ),
                                ),
                            ),
                            
                          ]),
                             Row(
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                           Padding(
                              padding: const EdgeInsetsDirectional.only(top: 200,start: 20),
                             child: SizedBox(
                              width: 200,
                              height: 100,
                               child: Text(
                                  """We have sent an SMS with an activation code to your phon +33 2 94 27 84 11""",
                                  style: TextStyle(color: Color(0xFFDDCC8C)),
                                ),
                             ),
                           ),
                          
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),Padding(
                        padding: const EdgeInsetsDirectional.only(top: 250,start: 4),
                        child: Form(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [SizedBox(
                            height: 68,
                            width: 45,
                            child: TextField(style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly],),
                          ),
                          SizedBox(
                            height: 68,
                            width: 45,
                            child: TextField(style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly],),
                          ),
                          SizedBox(
                            height: 68,
                            width: 45,
                            child: TextField(style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly],),
                          ),
                          SizedBox(
                            height: 68,
                            width: 45,
                            child: TextField(style: Theme.of(context).textTheme.headlineMedium,
                            keyboardType: TextInputType.number,
                            textAlign: TextAlign.center,
                            inputFormatters: [LengthLimitingTextInputFormatter(1),
                            FilteringTextInputFormatter.digitsOnly],),
                          ),
                          
                          
          
                          
          
                          
                          ],
                        )),
                      ),
                   
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                        Padding(
                              padding: const EdgeInsetsDirectional.only(top: 330,start: 45),
                          child: Text(
                                'Send code again     00:10',
                                style: TextStyle(color: Color(0xFFDDCC8C)),
                              ),
                        ),
                          
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      Container(
                          padding: const EdgeInsets.only(top: 390, left: 105),
                          child: SizedBox(
                            height: 60,
                            child: ElevatedButton(
                              onPressed: () async{
                                String code = ""; // Concatenate all the code fields here
                            try {
                              // Sign in the user with the verification ID and the entered code
                              await FirebaseAuth.instance.signInWithCredential(
                                PhoneAuthProvider.credential(
                                  verificationId: "YOUR_VERIFICATION_ID",
                                  smsCode: code,
                                ),
                              );
                                Navigator.pushNamed(context, "confirm");
                                } catch (e) {
                              // Handle errors during verification
                              print("Error verifying phone number: $e");
                            }
                              },
                              
                              style: ElevatedButton.styleFrom(
                                fixedSize: Size.fromWidth(150),
                                shape: const StadiumBorder(),
                                // padding: const EdgeInsets.symmetric(vertical: 16),
                                backgroundColor: const Color(0xFFDDCC8C).withOpacity(0.7),
                              ),
                             
                                child: Center(
                                  child: Text(
                                    "Continue",
                                    style: TextStyle(
                                        fontSize: 20,
                                        color:Color(0xff69482E),),
                                  ),
                                ),
                            ),
                          )),
                    ]),
                  ),
                ),
              ),
            ),
          ));
        }
      ),
    );
  }
}
