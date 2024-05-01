import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/buttons.dart';
import 'package:paridhi/pages/domains.dart';
import 'package:paridhi/pages/members_page.dart';
import 'package:paridhi/common/open_link.dart';
import 'package:paridhi/pages/merchandise.dart';
import 'package:paridhi/pages/pre_paridhi_events.dart';
import 'package:paridhi/pages/register.dart';
import 'package:paridhi/pages/workshop.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int start = 100;
    int delay = 100;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        leading: Padding(
          padding: const EdgeInsets.only(left: 12.0),
          child: SizedBox(
            width: 50,
            height: 50,
            child: Image.asset(
              'assets/logo/logo.png',
              fit: BoxFit.contain,
            ),
          ),
        ),
        title: const SizedBox(
          child: Text(
            'Paridhi 2024',
            style: TextStyle(
              color: Colors.red,
              fontSize: 22,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mega',
            ),
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FadeInDown(
                    delay: Duration(milliseconds: start),
                    child: Buttons(
                      text: 'Events',
                      onTap: () => const Domains(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FadeInDown(
                    delay: Duration(milliseconds: start + delay),
                    child: Buttons(
                      text: 'Workshop',
                      onTap: () => const Workshop(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FadeInDown(
                    delay: Duration(milliseconds: start + 2 * delay),
                    child: Buttons(
                      text: 'Pre-Paridhi Events',
                      onTap: () => const PreParidhiEvents(),
                      
                    ),
                  ),
                  const SizedBox(height: 10),
                  FadeInDown(
                    delay: Duration(milliseconds: start + 3 * delay),
                    child: Buttons(
                      text: 'Merchandise',
                      onTap: () => const Merchandise(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FadeInDown(
                    delay: Duration(milliseconds: start + 4 * delay),
                    child: Buttons(
                      text: 'Our Team',
                      onTap: () => MembersPage(),
                    ),
                  ),
                  const SizedBox(height: 10),
                  FadeInDown(
                    delay: Duration(milliseconds: start + 5 * delay),
                    child: Buttons(
                      text: 'Register',
                      onTap: () => const Register(),
                    ),
                  ),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 30.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FadeInUp(
                      child: const OpenLink(
                          url: 'https://www.facebook.com/msitparidhi2023',
                          asset: 'assets/logo/facebook.png'),
                    ),
                    const SizedBox(width: 30),
                    FadeInUp(
                      child: const OpenLink(
                          url: 'https://www.instagram.com/megatronix__msit/',
                          asset: 'assets/logo/instagram.png'),
                    ),
                    const SizedBox(width: 30),
                    FadeInUp(
                      child: const OpenLink(
                          url: 'https://www.linkedin.com/company/msitmegatronix/',
                          asset: 'assets/logo/linkedin.png'),
                    ),
                    const SizedBox(width: 30),
                    FadeInUp(
                      child: const OpenLink(
                          url: 'https://www.youtube.com/@megatronixmsit921',
                          asset: 'assets/logo/youtube.png'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
