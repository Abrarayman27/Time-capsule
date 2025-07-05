import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/firstscreens/signin.dart';


// import 'package:timecapsule/models/home.dart';

//void main() {
//  runApp(SignupPage());
//*}
// void main() {
//   runApp(MaterialApp(
//     routes: {
//       "signin": (context) => signin(),
//     },
//     home: SignupPage(),
//     debugShowCheckedModeBanner: false,
//   ));
// }
class SignupPage extends StatelessWidget {
  final myController = TextEditingController();
  final String? Function(String)? validator;
  //TextEditingController. This controller is typically used to manage the text input in a text field widget
  //validator: This is a function that takes a String as input and returns a String or null
  // void dispose() {
  //   // Clean up the controller when the widget is removed from the
  //   // widget tree.
  //   myController.dispose();
  //   // super.dispose();
  // }

  SignupPage({super.key, this.validator});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController confirmPasswordController = TextEditingController();
    GlobalKey<FormState> formState = GlobalKey<FormState>();

    return MaterialApp(
      routes: {
        // "home":(context) => home(),
        "signin": (context) => const signin()
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
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              const Column(
                                children: <Widget>[
                                  SizedBox(height: 120.0),
                                  Text(
                                    "SIGN UP",
                                    style: TextStyle(
                                        fontSize: 30, color: Color(0xFFDDCC8C)),
                                  ),
                                  SizedBox(
                                    height: 0,
                                  ),
                                ],
                              ),
                              Form(
                                key: formState,
                                child: Column(
                                  children: <Widget>[
                                    SizedBox(
                                      width: 310,
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "field is empty";
                                          }
                                          return null;
                                        },
                                        controller: emailController,
                                        decoration: const InputDecoration(
                                            hintText:
                                                "Email address / phone number",
                                            hintStyle: TextStyle(
                                              color: Color(0xFFDDCC8C),
                                            ),
                                            prefixIcon: Icon(
                                                CupertinoIcons.mail,
                                                color: Color(0xFFDDCC8C))),
                                        keyboardType:
                                            TextInputType.emailAddress,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    SizedBox(
                                      width: 310,
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "field is empty";
                                          }
                                          return null;
                                        },
                                        controller: passwordController,
                                        decoration: const InputDecoration(
                                          hintText: "Password",
                                          hintStyle: TextStyle(
                                              color: Color(0xFFDDCC8C)),
                                          prefixIcon: Icon(CupertinoIcons.lock,
                                              color: Color(0xFFDDCC8C)),
                                          suffixIcon: Icon(CupertinoIcons.eye,
                                              color: Color(0xFFDDCC8C)),
                                        ),
                                        keyboardType: TextInputType.phone,
                                        obscureText: true,
                                      ),
                                    ),
                                    const SizedBox(height: 20),
                                    SizedBox(
                                      width: 310,
                                      child: TextFormField(
                                        validator: (value) {
                                          if (value!.isEmpty) {
                                            return "field is empty";
                                          }
                                          return null;
                                        },
                                        controller: confirmPasswordController,
                                        decoration: const InputDecoration(
                                          hintText: "Confirm Password",
                                          hintStyle: TextStyle(
                                              color: Color(0xFFDDCC8C)),
                                          prefixIcon: Icon(CupertinoIcons.lock,
                                              color: Color(0xFFDDCC8C)),
                                          suffixIcon: Icon(
                                            CupertinoIcons.eye,
                                            color: Color(0xFFDDCC8C),
                                          ),
                                        ),
                                        keyboardType: TextInputType.phone,
                                        obscureText: true,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Container(
                                  padding:
                                      const EdgeInsets.only(top: 0, left: 3),
                                  child: SizedBox(
                                    height: 60,
                                    child: ElevatedButton(
                                      onPressed: () async {
  if (formState.currentState!.validate()) {
    if (passwordController.text != confirmPasswordController.text) {
      // Show error dialog for passwords not matching
      AwesomeDialog(
        context: context,
        dialogType: DialogType.error,
        animType: AnimType.rightSlide,
        title: 'Error Title',
        desc: 'Passwords do not match.',
        btnCancelOnPress: () {},
        btnOkOnPress: () {},
      ).show();
      return;
    }

    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );
      Navigator.of(context).pushReplacementNamed("signin");
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          animType: AnimType.rightSlide,
          title: 'Error Title',
          desc: 'The password provided is too weak.',
          btnCancelOnPress: () {},
          btnOkOnPress: () {},
        ).show();
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        AwesomeDialog(
          context: context,
          dialogType: DialogType.error,
          animType: AnimType.rightSlide,
          title: 'Error Title',
          desc: 'The account already exists for that email.',
          btnCancelOnPress: () {},
          btnOkOnPress: () {},
          
        ).show();
        Navigator.of(formState.currentContext!).pop();
      }
    } catch (e) {
      print(e);
    }
  } else {
    return;
  }
},

                                      style: ElevatedButton.styleFrom(
                                        fixedSize: const Size.fromWidth(150),
                                        shape: const StadiumBorder(),
                                        padding: const EdgeInsets.symmetric(
                                            vertical: 16),
                                        backgroundColor: const Color(0xFFDDCC8C)
                                            .withOpacity(0.7),
                                      ),

                                      // padding: const EdgeInsets.all(4.0),
                                      child: const Center(
                                        child: Text(
                                          "Sign up",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Color(0xff69482E),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Container(
                                    child: const Text(
                                      "Sign In with social media",
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Color(0xFFDDCC8C),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  GestureDetector(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          100 / 2 - 100 / 10),
                                      child: Image.asset(
                                        "image/facebook.png",
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          100 / 2 - 100 / 10),
                                      child: Image.asset(
                                        "image/twitter.png",
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          100 / 2 - 100 / 10),
                                      child: Image.asset(
                                        "image/google-plus.png",
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: ClipRRect(
                                      borderRadius: BorderRadius.circular(
                                          100 / 2 - 100 / 10),
                                      child: Image.asset(
                                        "image/linkedin.png",
                                        width: 40,
                                        height: 40,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 55,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  const Text(
                                    "Already have an account?",
                                    style: TextStyle(color: Color(0xFFDDCC8C)),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.pushNamed(context, "signin");
                                    },
                                    child: const Text("Sign in",
                                        style: TextStyle(
                                            color: Color(0xFFDDCC8C),
                                            fontWeight: FontWeight.bold)),
                                  ),
                                ],
                              ),
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
