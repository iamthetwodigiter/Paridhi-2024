import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/cards.dart';
import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/common/event_cards.dart';
import 'package:paridhi/domains/autonomous_robotics.dart';
import 'package:paridhi/domains/coding.dart';
import 'package:paridhi/domains/combat_robotics.dart';
import 'package:paridhi/domains/electrical.dart';
import 'package:paridhi/domains/gaming.dart';
import 'package:paridhi/domains/general.dart';
import 'package:paridhi/domains/manual_robotics.dart';

class Civil extends StatelessWidget {
  const Civil({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Civil',
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
        amount: 7,
        option: const [
          'Coding',
          'Manual Robotics',
          'Combat Robotics',
          'Autonomous Robotics',
          'Electrical',
          'Gaming',
          'General'
        ],
        ontap: [
          () => const Coding(),
          () => const ManualRobotics(),
          () => const CombatRobotics(),
          () => const AutonomousRobotics(),
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
                  name: 'Setu bandhan',
                  link:
                      'https://i.pinimg.com/originals/fc/c9/67/fcc967b7de2c1c9d9d3d9debc90aaf19.jpg',
                  description:
                      "Create a sturdy bridge using provided ice-cream sticks and glue; the strongest design, exclusive for all years, wins. Register now!",
                  onTap: () {
                    return const EventsCards(
                      title: 'Setu bandhan',
                      link:
                          'https://i.pinimg.com/originals/fc/c9/67/fcc967b7de2c1c9d9d3d9debc90aaf19.jpg',
                      teamsize: '3',
                      fee: '75[College] / 60[School]',
                      description:
                          'Craft a sturdy bridge with provided ice-cream sticks and glue. The strongest design, open to all years, wins! Register now to participate!',
                      rulesLink:
                          'https://drive.google.com/file/d/1MUOXxXL_KRz8TzHN6BCEU3xH-bUwspGv/view?usp=sharing',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Track O Treasure',
                  link:
                      "https://www.qad.com/blog/wp-content/uploads/2017/12/01.04.2018_Blog_b-min.jpg",
                  description:
                      "Unravel the challenge, solve riddles, and discover the treasure in this exclusive treasure hunt adventure. Register now and learn the rules!",
                  onTap: () {
                    return const EventsCards(
                      title: 'Track O Treasure',
                      link:
                          'https://www.qad.com/blog/wp-content/uploads/2017/12/01.04.2018_Blog_b-min.jpg',
                      teamsize: '3',
                      fee: '90[College] / 75[School]',
                      description:
                          'Embark on the challenge, solve riddles, and unearth the treasure in our exclusive treasure hunt adventure. Register now to uncover the rules and join the excitement!',
                      rulesLink:
                          'https://drive.google.com/file/d/1-pr-6ocmzwH-XRaUx8skRWWAtn9a4LzW/view?usp=sharing',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'CAD_O_MANIA',
                  link:
                      "https://5.imimg.com/data5/SELLER/Default/2023/2/OP/RX/YG/6694356/autocad-designing-500x500.jpeg",
                  description:
                      "Embark on the challenge: an AutoCAD drawing competition open to all. Click to register and unveil the competition rules.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Cad O Mania',
                      link:
                          'https://5.imimg.com/data5/SELLER/Default/2023/2/OP/RX/YG/6694356/autocad-designing-500x500.jpeg',
                      teamsize: '1',
                      fee: '60',
                      description:
                          'ETake on the challenge: an AutoCAD drawing competition open to all. Click to register and uncover the competition rules. Join now and showcase your skills!',
                      rulesLink:
                          'https://drive.google.com/file/d/1NLg04SjDKFhYqFgy9pQyHnaqOJsRkbDp/view?usp=sharing',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Mega Arch',
                  link:
                      "https://static.wixstatic.com/media/149872_4dc53bb4a2f947069a71604b73b34315~mv2.jpg/v1/fill/w_640,h_640,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/149872_4dc53bb4a2f947069a71604b73b34315~mv2.jpg",
                  description:
                      "Construct a load-bearing bridge using provided sand and bricks within a set time. The most robust design wins. Register for details.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Mega Arch',
                      link:
                          'https://static.wixstatic.com/media/149872_4dc53bb4a2f947069a71604b73b34315~mv2.jpg/v1/fill/w_640,h_640,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/149872_4dc53bb4a2f947069a71604b73b34315~mv2.jpg',
                      teamsize: '5',
                      fee: '150',
                      description:
                          'Build a load-bearing bridge using provided sand and bricks within a set time. The strongest design wins. Register for more details on this exciting challenge!',
                      rulesLink:
                          'https://drive.google.com/file/d/13nbgR0L5Lkf8mmQWeA-La8kbwOjVpMMw/view?usp=sharing',
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
