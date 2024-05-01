import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/cards.dart';
import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/common/event_cards.dart';
import 'package:paridhi/domains/civil.dart';
import 'package:paridhi/domains/coding.dart';
import 'package:paridhi/domains/combat_robotics.dart';
import 'package:paridhi/domains/electrical.dart';
import 'package:paridhi/domains/gaming.dart';
import 'package:paridhi/domains/general.dart';
import 'package:paridhi/domains/manual_robotics.dart';

class AutonomousRobotics extends StatelessWidget {
  const AutonomousRobotics({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Autonomous Robotics',
          style: TextStyle(
            color: Colors.red,
            fontSize: 20,
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
          'Combat Robotics',
          'Civil',
          'Electrical',
          'Gaming',
          'General'
        ],
        ontap: [
          () => const Coding(),
          () => const ManualRobotics(),
          () => const CombatRobotics(),
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
                  name: 'Line Trekker',
                  link:
                      'https://www.electronicshub.org/wp-content/uploads/2017/03/Arduino-Line-Follower-Robot-Image-7-760x440.jpg',
                  description:
                      "Compete in our autonomous bot challenge, navigate a unique path, solve puzzles, and reach the destination. Click to register and learn more!",
                  onTap: () {
                    return const EventsCards(
                      title: 'Line Trekker',
                      link:
                          'https://www.electronicshub.org/wp-content/uploads/2017/03/Arduino-Line-Follower-Robot-Image-7-760x440.jpg',
                      teamsize: '5',
                      fee: '300',
                      description:
                          'Compete in our autonomous bot challenge! Navigate a unique path, solve puzzles, and reach the destination. Click to register and learn more!',
                      rulesLink:
                          'https://drive.google.com/file/d/14aZ7xP86NE54bNbzu7Wk011GWENIQZXO/view?usp=sharing',
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
