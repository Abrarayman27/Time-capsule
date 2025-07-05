import 'package:flutter/material.dart';


class HoverButton extends StatefulWidget {
  const HoverButton({super.key, required this.text, required this.onPressed1});
final String text;
final VoidCallback onPressed1;
  @override
  State<HoverButton> createState() => _HoverButton();
}
class _HoverButton extends State<HoverButton> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: ElevatedButton(
        onPressed: () {
          // Add your button click logic here
          widget.onPressed1();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.hovered)) {
              return const Color(0xffDDCC8C); // Change background color on hover
            }
            return const Color(0xff69482E); // Default background color
          }),
          foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
            if (states.contains(MaterialState.hovered)) {
              return const Color(0xff69482E); // Change text color on hover
            }
            return const Color(0xffDDCC8C); // Default text color
          }),
          padding: MaterialStateProperty.all(const EdgeInsets.all(16.0)),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8.0)),
          ),
        ),
        child: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 28,
          ),
        ),
      ),
    );
  }
}