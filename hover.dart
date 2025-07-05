import 'package:flutter/material.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Hover Button Example'),
//         ),
//         body: Center(
//           child: HoverButton(),
//         ),
//       ),
//     );
//   }
// }

class HoverButton2 extends StatefulWidget {
  const HoverButton2({super.key});

  @override
  _HoverButton2State createState() => _HoverButton2State();
}

class _HoverButton2State extends State<HoverButton2> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: ElevatedButton(
        onPressed: () {
          // Add your button click logic here
          Navigator.pushNamed(context, "signup");
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.hovered)) {
              return const Color.fromARGB(255, 68, 255, 102); // Change background color on hover
            }
            return const Color(0xff69482E); // Default background color
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.hovered)) {
              return const Color.fromARGB(255, 255, 68, 218); // Change text color on hover
            }
            return const Color(0xffDDCC8C); // Default text color
          }),
          padding: MaterialStateProperty.all(const EdgeInsets.all(16.0)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          ),
        ),
        child: const Text(
          'Sign Up',
          style: TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}