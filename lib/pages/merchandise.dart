import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/common/open_link.dart';
import 'package:paridhi/pages/domains.dart';
import 'package:paridhi/pages/members_page.dart';
import 'package:paridhi/pages/pre_paridhi_events.dart';
import 'package:paridhi/pages/register.dart';
import 'package:paridhi/pages/workshop.dart';

class Merchandise extends StatelessWidget {
  const Merchandise({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Merchandise',
          style: TextStyle(
            color: Colors.red,
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'Mega',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: DrawerMenu(
        title: 'Merchandise',
        amount: 5,
        option: const [
          'Events',
          'Workshop',
          'Pre-Paridhi Events',
          'Our Team',
          'Register'
        ],
        ontap: [
          () => const Domains(),
          () => const Workshop(),
          () => const PreParidhiEvents(),
          () => const MembersPage(),
          () => const Register(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: FadeIn(
          delay: const Duration(milliseconds: 200),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(110, 43, 43, 43),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Try our white merch',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mega',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: size.width * 0.9,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.asset('assets/merch/white-front.png'),
                            const SizedBox(width: 20),
                            Image.asset('assets/merch/white-back.png'),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Rs 349',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.white,
                                decorationThickness: 2.0,
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mega',
                              ),
                            ),
                            TextSpan(
                              text: '    Rs 299',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mega',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const OpenLink(
                          url: 'https://forms.gle/ms67u7MocZEnPJGP7',
                          asset: 'Buy Now'),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: const Color.fromARGB(110, 43, 43, 43),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      const Text(
                        'Try our black merch',
                        style: TextStyle(
                          color: Colors.red,
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Mega',
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        height: size.width * 0.9,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Image.asset('assets/merch/black-front.png'),
                            const SizedBox(width: 20),
                            Image.asset('assets/merch/black-back.png'),
                          ],
                        ),
                      ),const SizedBox(height: 20),
                      RichText(
                        text: const TextSpan(
                          children: [
                            TextSpan(
                              text: 'Rs 349',
                              style: TextStyle(
                                decoration: TextDecoration.lineThrough,
                                decorationColor: Colors.white,
                                decorationThickness: 2.0,
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mega',
                              ),
                            ),
                            TextSpan(
                              text: '    Rs 299',
                              style: TextStyle(
                                color: Colors.red,
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Mega',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 20),
                      const OpenLink(
                          url: 'https://forms.gle/ms67u7MocZEnPJGP7',
                          asset: 'Buy Now'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
