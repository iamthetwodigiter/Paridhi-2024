import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;
  final dynamic onTap;
  const Buttons({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => onTap()),
      ),
      style: ElevatedButton.styleFrom(
        foregroundColor: Colors.red,
        // shadowColor: const Color.fromARGB(255, 134, 66, 66),
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontFamily: 'Mega',
          ),
        ),
      ),
    );
  }
}
