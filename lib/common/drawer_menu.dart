import 'package:flutter/material.dart';
import 'package:paridhi/landing_screen.dart';

class DrawerMenu extends StatelessWidget {
  final String title;
  final int amount;
  final List<String> option;
  final List<Function> ontap;
  const DrawerMenu({
    super.key,
    required this.title,
    required this.amount,
    required this.option,
    required this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Drawer(
      width: size.width * 0.55,
      child: Container(
        color: Colors.black,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.black,
              ),
              child: Text(
                title,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mega',
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: amount,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    option[index],
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontFamily: 'Mega',
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ontap[index]()),
                    );
                  },
                );
              },
            ),
            ListTile(
                  title: const Text(
                    'Home',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontFamily: 'Mega',
                    ),
                  ),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const LandingScreen()),
                    );
                  },
                ),
          ],
        ),
      ),
    );
  }
}
