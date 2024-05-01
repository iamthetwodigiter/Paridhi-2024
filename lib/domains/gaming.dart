import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/cards.dart';
import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/common/event_cards.dart';
import 'package:paridhi/domains/autonomous_robotics.dart';
import 'package:paridhi/domains/civil.dart';
import 'package:paridhi/domains/coding.dart';
import 'package:paridhi/domains/combat_robotics.dart';
import 'package:paridhi/domains/electrical.dart';
import 'package:paridhi/domains/general.dart';
import 'package:paridhi/domains/manual_robotics.dart';

class Gaming extends StatelessWidget {
  const Gaming({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Gaming',
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
          'Electrical',
          'General'
        ],
        ontap: [
          () => const Coding(),
          () => const ManualRobotics(),
          () => const CombatRobotics(),
          () => const AutonomousRobotics(),
          () => const Civil(),
          () => const Electrical(),
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
                  name: 'Valorant LAN',
                  link:
                      'https://stanforddaily.com/wp-content/uploads/2020/08/image-2.png',
                  description:
                      "Valorant: Tactical prowess meets precise aim in dynamic multiplayer battles.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Valorant Lan',
                      link:
                          'https://stanforddaily.com/wp-content/uploads/2020/08/image-2.png',
                      teamsize: 'Max 6 / Min 5',
                      fee: '500',
                      description:
                          'Valorant: Where tactical prowess meets precise aim in dynamic multiplayer battles.',
                      rulesLink:
                          'https://drive.google.com/file/d/1Q_A8Hw-w6iLLZq6gxgaUJ159C6-UTmvd/view?usp=sharing',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'BGMI',
                  link:
                      "https://images.hindustantimes.com/tech/img/2021/11/28/960x540/986051-pubg-mobile-bgmi_1628314432587_1638104772146.jpg",
                  description:
                      "BGMI: Strategic survival, intense firefights, and victory in immersive battlegrounds.",
                  onTap: () {
                    return const EventsCards(
                      title: 'BGMI Lan',
                      link:
                          'https://images.hindustantimes.com/tech/img/2021/11/28/960x540/986051-pubg-mobile-bgmi_1628314432587_1638104772146.jpg',
                      teamsize: 'Max 5 / Min 4',
                      fee: '500',
                      description:
                          'BGMI: Experience strategic survival, intense firefights, and victory in immersive battlegrounds.',
                      rulesLink:
                          '',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'E-football(PES)',
                  link:
                      "https://news.elbadil.com/wp-content/uploads/2023/09/eFootball-2024-4.jpg",
                  description:
                      "E-Football: Experience the virtual pitch with skill, strategy, and teamwork.",
                  onTap: () {
                    return const EventsCards(
                      title: 'E-Football(PES)',
                      link:
                          'https://news.elbadil.com/wp-content/uploads/2023/09/eFootball-2024-4.jpg',
                      teamsize: 'NA',
                      fee: 'NA',
                      description:
                          'E-Football: Dive into the virtual pitch with skill, strategy, and teamwork.',
                      rulesLink:
                          'https://drive.google.com/file/d/1sXw8a8PeVAq7_vCDTaxeTbgisSMhfhun/view?usp=sharing',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'EAFC 2024',
                  link:
                      "https://prod.assets.earlygamecdn.com/images/EA-FC-24-Cover-standard-edition.jpg?transform=banner2x_webp",
                  description:
                      "EAFC 2024: Dominate the digital pitch with your unrivaled football skills in electrifying worldwide tournaments.",
                  onTap: () {
                    return const EventsCards(
                      title: 'EAFC 2024',
                      link:
                          'https://prod.assets.earlygamecdn.com/images/EA-FC-24-Cover-standard-edition.jpg?transform=banner2x_webp',
                      teamsize: 'NA',
                      fee: 'NA',
                      description:
                          'FIFA 2024: Showcase your football mastery in thrilling global competitions.',
                      rulesLink:
                          '',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: '8 Ball Pool',
                  link:
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgAzRDCGMgSw6OjSIX-7Cn1tOwiAfU8c37Mw&s",
                  description:
                      "8 Ball Pool: Showcase your cue-sport finesse in electrifying international tournaments.",
                  onTap: () {
                    return const EventsCards(
                      title: '8 Ball Pool',
                      link:
                          'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgAzRDCGMgSw6OjSIX-7Cn1tOwiAfU8c37Mw&s',
                      teamsize: 'NA',
                      fee: 'NA',
                      description:
                          '8 Ball Pool 2024: Showcase your cue-sport finesse in electrifying international tournaments',
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
