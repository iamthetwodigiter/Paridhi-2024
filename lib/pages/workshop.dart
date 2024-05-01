import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'dart:async';

import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/pages/domains.dart';
import 'package:paridhi/pages/members_page.dart';
import 'package:paridhi/pages/merchandise.dart';
import 'package:paridhi/pages/pre_paridhi_events.dart';
import 'package:paridhi/pages/register.dart';

class Workshop extends StatefulWidget {
  const Workshop({super.key});

  @override
  State<Workshop> createState() => _WorkshopState();
}

class _WorkshopState extends State<Workshop> {
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
          'Workshop',
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Mega',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),drawer: DrawerMenu(
        title: 'Workshop',
        amount: 5,
        option: const [
          'Events',
          'Pre-Paridhi Events',
          'Merchandise',
          'Our Team',
          'Register'
        ],
        ontap: [
          () => const Domains(),
          () => const PreParidhiEvents(),
          () => const Merchandise(),
          () => MembersPage(),
          () => const Register(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: FadeIn(
          delay: const Duration(milliseconds: 200),
          child: Column(
            children: [
              CachedNetworkImage(
                imageUrl:
                    'https://lh3.googleusercontent.com/u/0/drive-viewer/AKGpihaW12q1DfAAa3LcM26v4azn7qGqEyZUo2h6mKXjBCTKefiX88M7PMTH1PRQp_aaSkaeMBfN9YEXU8rkpkGfpdveGwlA1nnH_gw=w1920-h972-rw-v1',
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              const SizedBox(height: 20),
              const Text(
                'Coding Workshop',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mega',
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Join us at our Competitive Programming and Problem Solving Workshop to refine your coding skills! Whether you're a beginner or an experienced coder, this session caters to all levels. Happening on April 26th, 3:30 PM to 6:00 PM, at the CSE Seminar Hall. Don't miss out on this opportunity to enhance your abilities!",
                style: TextStyle(
                  color: Color.fromARGB(255, 201, 201, 201),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              AnimatedOpacity(
                opacity: _isVisible ? 1.0 : 0.0,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
                child: const Text(
                  'Registration Closed!!',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Mega',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

