import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/common/open_link.dart';
import 'package:paridhi/pages/domains.dart';
import 'package:paridhi/pages/members_page.dart';
import 'package:paridhi/pages/merchandise.dart';
import 'package:paridhi/pages/register.dart';
import 'package:paridhi/pages/workshop.dart';

class PreParidhiEvents extends StatelessWidget {
  const PreParidhiEvents({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Pre-Paridhi Events',
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
        title: 'Pre-Paridhi Events',
        amount: 5,
        option: const [
          'Events',
          'Workshop',
          'Merchandise',
          'Our Team',
          'Register'
        ],
        ontap: [
          () => const Domains(),
          () => const Workshop(),
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
                    'https://lh3.googleusercontent.com/u/0/drive-viewer/AKGpihbcHufWpyG4QCMXaYtaiVKjmUMZ0BkP7an_UGjyRhVIsxyhYHfWd9LMieI1zpHyic9K19oQ7JbH3nSPylCAttm0yA_fbkqlTG0=w1920-h972-rw-v1',
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
              const SizedBox(height: 20),
              const Text(
                'Gaming',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mega',
                ),
                textAlign: TextAlign.center,
              ),
              const Text(
                "Join us at the Pre-Paridhi Gaming Bash, presented by The ESports Club & Megatronix. Compete in thrilling tournaments like Valorant 2v2, FIFA (1v1), and Mortal Kombat (1v1) for a chance to win big cash prizes. Mark your calendars for April 30th, 2024, at the CSE Seminar Hall. Entry is FREE! Don't miss this opportunity to level up your gaming experience and connect with fellow gamers.",
                style: TextStyle(
                  color: Color.fromARGB(255, 201, 201, 201),
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 30),
              const OpenLink(
                  url:
                      'https://theesports.club/event/tec-arena-connect-meghand-saha-institute-of-technologyEAQiLR',
                  asset: 'Register'),
            ],
          ),
        ),
      ),
    );
  }
}
