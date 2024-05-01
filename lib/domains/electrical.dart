import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/cards.dart';
import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/common/event_cards.dart';
import 'package:paridhi/domains/autonomous_robotics.dart';
import 'package:paridhi/domains/civil.dart';
import 'package:paridhi/domains/coding.dart';
import 'package:paridhi/domains/combat_robotics.dart';
import 'package:paridhi/domains/gaming.dart';
import 'package:paridhi/domains/general.dart';
import 'package:paridhi/domains/manual_robotics.dart';

class Electrical extends StatelessWidget {
  const Electrical({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Electrical',
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
        title: 'Domains',
        amount: 6,
        option: const [
          'Coding',
          'Manual Robotics',
          'Combat Robotics',
          'Autonomous Robotics',
          'Civil',
          'Gaming',
          'General'
        ],
        ontap: [
          () => const Coding(),
          () => const ManualRobotics(),
          () => const CombatRobotics(),
          () => const AutonomousRobotics(),
          () => const Civil(),
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
                  name: 'ElectriQuest',
                  link:
                      'https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2010/04/electrical_component/9636951-4-eng-GB/Electrical_component_pillars.jpg',
                  description:
                      "Dive into Paridhi's dynamic electrical domain events: Electroquest, Powerblitz. Discover thrilling opportunities by clicking the card. Join us now!",
                  onTap: () {
                    return const EventsCards(
                      title: 'ElectriQuest',
                      link:
                          'https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2010/04/electrical_component/9636951-4-eng-GB/Electrical_component_pillars.jpg',
                      teamsize: 'Maximum 2',
                      fee: '60',
                      description:
                          "Dive into Paridhi's dynamic electrical domain events: Electroquest, Powerblitz. Discover thrilling opportunities by clicking the card. Join us now!",
                      rulesLink:
                          'https://drive.google.com/file/d/1R8-ihJ0IVapK4m3ogxHBWmHs-g454q--/view?usp=sharing',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'PowerBlitz',
                  link:
                      "https://images.unsplash.com/photo-1451187863213-d1bcbaae3fa3?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  description:
                      "Dive into Paridhi's dynamic electrical domain events: Electroquest, Powerblitz. Discover thrilling opportunities by clicking the card. Join us now!",
                  onTap: () {
                    return const EventsCards(
                      title: 'PowerBlitz',
                      link:
                          'https://images.unsplash.com/photo-1451187863213-d1bcbaae3fa3?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      teamsize: '1',
                      fee: '40',
                      description:
                          "Dive into Paridhi's dynamic electrical domain events: Electroquest, Powerblitz. Discover thrilling opportunities by clicking the card. Join us now!",
                      rulesLink:
                          'https://drive.google.com/file/d/1NAubPc8fuwFogeJn886qMYfu3BJRoQ8R/view?usp=sharing',
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
