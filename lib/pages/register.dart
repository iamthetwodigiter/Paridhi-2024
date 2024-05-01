import 'package:flutter/material.dart';
import 'dart:async';

import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/pages/domains.dart';
import 'package:paridhi/pages/members_page.dart';
import 'package:paridhi/pages/merchandise.dart';
import 'package:paridhi/pages/pre_paridhi_events.dart';
import 'package:paridhi/pages/workshop.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool _isVisible = true;

  @override
  void initState() {
    super.initState();
    // Start the blinking effect
    Timer.periodic(const Duration(seconds: 1), (Timer timer) {
      setState(() {
        _isVisible = !_isVisible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(
            color: Colors.red,
            fontSize: 23,
            fontWeight: FontWeight.bold,
            fontFamily: 'Mega',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: DrawerMenu(
        title: 'Register',
        amount: 5,
        option: const [
          'Events',
          'Workshop',
          'Pre-Paridhi Events',
          'Merchandise',
          'Our Team'
        ],
        ontap: [
          () => const Domains(),
          () => const Workshop(),
          () => const PreParidhiEvents(),
          () => const Merchandise(),
          () => MembersPage(),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          AnimatedOpacity(
            opacity: _isVisible ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            child: const Text(
              'Registration will start soon',
              style: TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mega',
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
