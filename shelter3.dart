import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:timecapsule/shelterm/shelter1.dart';
import 'package:timecapsule/shelterm/shelter2.dart';
import 'package:timecapsule/shelterm/shelter4.dart';


class shelter3 extends StatefulWidget {
  const shelter3({super.key});

  @override
  State<shelter3> createState() => shelter3State();
}

class shelter3State extends State<shelter3> {
  Icon ic = const Icon(CupertinoIcons.heart, size: 30);
  bool state = false;
  Icon ic2 = const Icon(
    CupertinoIcons.heart_solid,
    size: 30,
    color: Color.fromARGB(255, 206, 38, 26),
  );
  Icon ic3 = const Icon(CupertinoIcons.heart, size: 30);

  void fav() {
    setState(() {
      if (state == false) {
        ic = ic2;
        state = true;
      } else {
        ic = ic3;
        state = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        routes: {
          "shelter2": (context) => const shelter2(),
          "shelter4": (context) => const shelter4(),
          "discr": (context) => shelter(),
        },
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: Builder(builder: (context) {
            return SafeArea(
              child: Stack(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("image/backgroung2.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: ListView(
                      children: [
                        Builder(builder: (context) {
                          return Container(
                            width: 450,
                            height: 350,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(50),
                                bottomRight: Radius.circular(50),
                              ),
                              image: DecorationImage(
                                image: AssetImage("image/2.jpg"),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: const Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                SizedBox(
                                  width: 20.0,
                                ),
                                SizedBox(width: 5),
                              ],
                            ),
                          );
                        }),
                        const SizedBox(
                          height: 15.0,
                        ),
                        //2nd row
                        SizedBox(
                          width: 400,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 35,
                              ),
                              Container(
                                height: 48,
                                width: 48,
                                decoration: const BoxDecoration(
                                  color: Color(0xFFA39467),
                                  shape: BoxShape.circle,
                                ),
                                child: const Center(
                                  child: Icon(
                                    CupertinoIcons.doc_text,
                                    size: 40,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "the story of this piece",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFDDCC8C),
                                ),
                              ),
                              // SizedBox(
                              //   width: 160,
                              // ),
                              // GestureDetector(
                              //   onTap: () {
                              //     fav();
                              //   },
                              //   child: ic,
                              // ),
                            ],
                          ),
                        ),

                        //3rd raw
                        const SizedBox(
                          height: 10,
                        ),

                        Container(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          child: const Text(
                            "Pompe, the female personification of a procession, between Eros and Dionysos; names inscribed Pompe whose mantle only accentuates her nudity, holds a wreath and looks toward Dionysos, seated and wearing a diadem. The winged Eros adjusts his sandals as though preparing to depart. The gilt openwork basket on the ground is the type used in religious processions to carry sacrificial implements to the place of sacrifice. This procession must be part of an Athenian festival in honor of Dionysos, probably the Anthesteria, which culminated in the sacred marriage of the god to the wife of the archon basileus, a high official representing the ancient Athenian kings. This is one of the most refined vase-paintings in the entire collection. The graceful figure of Pompe reflects full-scale statues of Aphrodite in the nude that were being carved in the wake of the first nude statue of the goddess created by Praxiteles in the mid-fourth century B.C.",
                            style: TextStyle(
                              fontSize: 16,
                              color: Color(0xFFDDCC8C),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 450,
                          child: Row(
                            children: [
                              SizedBox(
                                width: 20,
                              ),
                              // Container(
                              //   height: 48,
                              //   width: 48,
                              //   decoration: BoxDecoration(
                              //     color: Color(0xFFA39467),
                              //     shape: BoxShape.circle,
                              //   ),
                              //   child: Center(
                              //     child: Image(
                              //       image: AssetImage("image/sculpture.png"),
                              //       width: 40,
                              //       height: 40,
                              //     ),
                              //   ),
                              // ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "Pictures",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                  color: Color(0xFFDDCC8C),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 30,
                              ),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "shelter2");
                                },
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(100 / 2 - 100 / 10),
                                  child: Image.asset(
                                    "image/1.jpg",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 30),
                              GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "shelter4");
                                },
                                child: ClipRRect(
                                  borderRadius:
                                      BorderRadius.circular(100 / 2 - 100 / 10),
                                  child: Image.asset(
                                    "image/3.jpg",
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 30,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                              width: 80,
                              height: 100,
                              
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, "discr");
                    
                                },
                                child: const Positioned(
                                  left: 50,
                                  right: 0,
                                  top:20,

                                  child: Icon(CupertinoIcons.back,
                                      color: Colors.white, size: 30),
                                ),
                              )),
                ],
              ),
            );
          }),
        ));
  }
}
