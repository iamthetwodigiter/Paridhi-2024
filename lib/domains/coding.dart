import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/cards.dart';
import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/common/event_cards.dart';
import 'package:paridhi/domains/autonomous_robotics.dart';
import 'package:paridhi/domains/civil.dart';
import 'package:paridhi/domains/combat_robotics.dart';
import 'package:paridhi/domains/electrical.dart';
import 'package:paridhi/domains/gaming.dart';
import 'package:paridhi/domains/general.dart';
import 'package:paridhi/domains/manual_robotics.dart';

class Coding extends StatelessWidget {
  const Coding({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Coding',
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
          'Manual Robotics',
          'Combat Robotics',
          'Autonomous Robotics',
          'Civil',
          'Electrical',
          'Gaming',
          'General'
        ],
        ontap: [
          () => const ManualRobotics(),
          () => const CombatRobotics(),
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
                  name: 'Bug Blitz',
                  link:
                      'https://bairesdev.mo.cloudinary.net/blog/2021/01/8-Debugging-Techniques.png?tx=w_1280,q_auto',
                  description:
                      "Join our CP debugging competition, open to all, featuring on-the-spot challenges. Click now to register for this exclusive event!",
                  onTap: () {
                    return const EventsCards(
                      title: 'Bug Blitz',
                      link:
                          'https://bairesdev.mo.cloudinary.net/blog/2021/01/8-Debugging-Techniques.png?tx=w_1280,q_auto',
                      teamsize: '1',
                      fee: '30',
                      description:
                          'Multi-year 1v1 CP debugging contest open for all participants. Join to showcase your skills in competitive programming and hone your debugging abilities.',
                      rulesLink:
                          'https://drive.google.com/file/d/1VLLssQKDlXSm8LUCuS2Ivi0ufREwdHK9/view?usp=drive_link',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Web Minds',
                  link:
                      "https://bizmo.al/wp-content/uploads/2022/03/Web-Dev-Blog.png",
                  description:
                      "Join our website development competition featuring prelims and finals, open to all, with registration and rules available here",
                  onTap: () {
                    return const EventsCards(
                      title: 'Web Minds',
                      link:
                          'https://bizmo.al/wp-content/uploads/2022/03/Web-Dev-Blog.png',
                      teamsize: '2',
                      fee: '100',
                      description:
                          'Engage in the Web Development Challenge spanning two rounds. Top performers advance to the finals, crafting captivating web pages. Finalists vie for cash prizes. Open to all years, this competition offers a platform to showcase skills, with excellence leading to recognition and rewards.',
                      rulesLink:
                          'https://drive.google.com/file/d/1QHecZlZLDx7lpyY1SvYiGUHkPvoeaSrs/view?usp=drive_link',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Code Quest',
                  link:
                      "https://media.geeksforgeeks.org/wp-content/cdn-uploads/Competitive-Programming.jpg",
                  description:
                      "Join an exclusive two-round cp competition, comprising prelims and finals, open to all years. Click here to register now!",
                  onTap: () {
                    return const EventsCards(
                      title: 'Code Quest',
                      link:
                          'https://media.geeksforgeeks.org/wp-content/cdn-uploads/Competitive-Programming.jpg',
                      teamsize: '2',
                      fee: '150',
                      description:
                          'Competitive Programming contest consists of two rounds: prelims and finals. Top performers in prelims advance to finals for a chance to win lucrative cash prizes. Open to all participants across all years, it promises an exhilarating challenge and rewards excellence in coding prowess.',
                      rulesLink:
                          'https://drive.google.com/file/d/1i0RAs5WzalGAaBnL5a41g4t6e3tCk0RA/view?usp=drive_link',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'CodeZen',
                  link:
                      "https://varthana.com/school/wp-content/uploads/2023/02/B193.jpg",
                  description:
                      "Exclusive cp & mcq competition with two rounds, prelims and finals, tailored for school students and first-year participants. Click here to register!",
                  onTap: () {
                    return const EventsCards(
                      title: 'CodeZen',
                      link:
                          'https://varthana.com/school/wp-content/uploads/2023/02/B193.jpg',
                      teamsize: '2',
                      fee: '100',
                      description:
                          "Join our exclusive CP contest tailored for first-year students and school attendees. The competition features two rounds: prelims and finals. Top performers advance to the finals for a chance to win enticing cash prizes. Don't miss this opportunity to showcase your skills and compete at the highest level!",
                      rulesLink:
                          'https://drive.google.com/file/d/1vx68j530eil1nM_3qHI3T6jLYQZp4-3p/view?usp=drive_link',
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
