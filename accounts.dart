import 'package:flutter/material.dart';

void main() {
  runApp(const account());
}

class account extends StatelessWidget {
  const account({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
            debugShowCheckedModeBanner: false,

        home: Scaffold(
      body: Container(
        decoration: const BoxDecoration(
                    // borderRadius:BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                    image: DecorationImage(
                      image: AssetImage("image/backgroung2.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
        margin: const EdgeInsets.all(24),
        child:
            Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
          _top(context),
          _middle(context),
          _bottom(context),
        ]),
      ),
    ));
  }
}

_top(context) {
  return const Column(
    children: [
      Text(
        'Google Accounts',
        style: TextStyle(fontSize: 30, color: Color.fromARGB(239, 220, 150, 1)),
      )
    ],
  );
}

_middle(context) {
  return Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
    ButtonTheme(
        child: OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: const Color.fromARGB(221, 204, 140, 1).withOpacity(0.7),
      ),
      onPressed: () {},
      child: const Text(
        'Abrora123@gmail.com',
        style: TextStyle(
            color: Color.fromARGB(108, 77, 50, 1), fontWeight: FontWeight.bold),
      ),
    )),
    const SizedBox(height: 20),
    ButtonTheme(
      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          backgroundColor: const Color.fromARGB(221, 204, 140, 1).withOpacity(0.7),
        ),
        onPressed: () {},
        child: const Text(
          "Abrar111@gmail.com",
          style: TextStyle(
              color: Color.fromARGB(108, 77, 50, 1),
              fontWeight: FontWeight.bold),
        ),
      ),
    ),
  ]);
}

_bottom(context) {
  return OutlinedButton(
      style: OutlinedButton.styleFrom(
          backgroundColor: const Color.fromARGB(221, 204, 140, 1).withOpacity(0.7)),
      onPressed: () {},
      child: const Text(
        "Continue with Abrar111",
        style: TextStyle(
            color: Color.fromARGB(108, 77, 50, 1), fontWeight: FontWeight.bold),
      ));
}
