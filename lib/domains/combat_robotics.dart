import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/cards.dart';
import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/common/event_cards.dart';
import 'package:paridhi/domains/autonomous_robotics.dart';
import 'package:paridhi/domains/civil.dart';
import 'package:paridhi/domains/coding.dart';
import 'package:paridhi/domains/electrical.dart';
import 'package:paridhi/domains/gaming.dart';
import 'package:paridhi/domains/general.dart';
import 'package:paridhi/domains/manual_robotics.dart';

class CombatRobotics extends StatelessWidget {
  const CombatRobotics({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Combat Robotics',
          style: TextStyle(
            color: Colors.red,
            fontSize: 26,
            fontWeight: FontWeight.bold,
            fontFamily: 'Mega',
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      drawer: DrawerMenu(
        title: 'Domains',
        amount: 7,
        option: const [
          'Coding',
          'Manual Robotics',
          'Autonomous Robotics',
          'Civil',
          'Electrical',
          'Gaming',
          'General'
        ],
        ontap: [
          () => const Coding(),
          () => const ManualRobotics(),
          () => const AutonomousRobotics(),
          () => const Civil(),
          () => const Electrical(),
          () => const Gaming(),
          () => const General(),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              ZoomIn(
                child: Cards(
                  name: 'Throne of Bots (8kg)',
                  link:
                      "https://media.wired.com/photos/59323349a3126458449936ce/4:3/w_929,h_697,c_limit/IMG_1710-1.jpg",
                  description:
                      "Join the heart-pounding bot fighting competition , open to all years! Click to register and learn the rules for the challenge.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Throne of Bots (8kg)',
                      link:
                          'https://media.wired.com/photos/59323349a3126458449936ce/4:3/w_929,h_697,c_limit/IMG_1710-1.jpg',
                      teamsize: '5',
                      fee: '600',
                      description:
                          'Join our heart-throbbing bot war unfer 8 kg category competition open for all!Register now and uncover the rules for this thrilling event!',
                      rulesLink:
                          'https://drive.google.com/file/d/1Myrcu_sRe7P9Redloay5RvzU1sHYmoOC/view?usp=drive_link',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Throne of Bots (15kg)',
                  link:
                      "https://kurukshetraceg.org.in/assets/Robowars-B60LX8Oq.jpg",
                  description:
                      "Join the heart-pounding bot fighting competition , open to all years! Click to register and learn the rules for the challenge.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Throne of Bots (15kg)',
                      link:
                          'https://kurukshetraceg.org.in/assets/Robowars-B60LX8Oq.jpg',
                      teamsize: '5',
                      fee: '1000',
                      description:
                          'Join our heart-throbbing bot war competition under 15 kg category open for all!Register now and uncover the rules for this thrilling event!',
                      rulesLink:
                          'https://drive.google.com/file/d/1h3gX_TWCwYn0U7kB_8U3wyFH0u8bvLRd/view?usp=drive_link',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Throne of Bots (Combo 8kg & 15kg)',
                  link:
                      "https://techfest.org/static/media/link2.81d14472b51ddf59813a.jpg",
                  description:
                      "Join the heart-pounding bot fighting competition , open to all years! Click to register and learn the rules for the challenge.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Throne of Bots Combo(8 kg + 15 kg)',
                      link:
                          'https://techfest.org/static/media/link2.81d14472b51ddf59813a.jpg',
                      teamsize: 'Updated Soon',
                      fee: '1400',
                      description:
                          'Join our heart-throbbing bot war competition open for all!Register now and uncover the rules for this thrilling event!',
                      rulesLink:
                          '',
                    );
                  },
                ),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
