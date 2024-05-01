import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/cards.dart';
import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/domains/autonomous_robotics.dart';
import 'package:paridhi/domains/civil.dart';
import 'package:paridhi/domains/coding.dart';
import 'package:paridhi/domains/combat_robotics.dart';
import 'package:paridhi/domains/electrical.dart';
import 'package:paridhi/domains/gaming.dart';
import 'package:paridhi/domains/general.dart';
import 'package:paridhi/domains/manual_robotics.dart';
import 'package:paridhi/pages/members_page.dart';
import 'package:paridhi/pages/merchandise.dart';
import 'package:paridhi/pages/pre_paridhi_events.dart';
import 'package:paridhi/pages/register.dart';
import 'package:paridhi/pages/workshop.dart';

class Domains extends StatelessWidget {
  const Domains({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
      title: const Text(
        'Domains',
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
        title: 'Events',
        amount: 5,
        option: const [
          'Workshop',
          'Pre-Paridhi Events',
          'Merchandise',
          'Our Team',
          'Register'
        ],
        ontap: [
          () => const Workshop(),
          () => const PreParidhiEvents(),
          () => const Merchandise(),
          () => MembersPage(),
          () => const Register(),
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
                  name: 'CODING',
                  link:
                      'https://assets.entrepreneur.com/content/3x2/2000/1649279368-Ent-2022Python.jpeg',
                  description:
                      "Explore Paridhi's exhilarating coding contests—CP, web, debugging—tailored for college as well as school students. Click the card for exciting opportunities!",
                  onTap: () => const Coding(),
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Manual Robotics',
                  link:
                      "https://images.unsplash.com/photo-1581090466144-8ed89ea98b25?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  description:
                      "Embark on Paridhi's electrifying robotics challenges—wars, races, mazes, and more... Click for thrilling opportunities!",
                  onTap: () => const ManualRobotics(),
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Combat Robotics',
                  link:
                      "https://i0.wp.com/makezine.com/wp-content/uploads/2022/04/10-rules-robo-combat__JB62062_3-Jon-C-R-Bennett.jpg",
                  description:
                      "Embark on Paridhi's electrifying robotics challenges—wars and more... Click for thrilling opportunities!",
                  onTap: () => const CombatRobotics(),
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Autonomous Robotics',
                  link:
                      "https://www2.deloitte.com/content/dam/Deloitte/us/Images/promo_images/science/us-robot-head.jpg",
                  description:
                      "Dive into Paridhi's thrilling autonomous robotics challenges. Click the card for an exciting array of opportunities!",
                  onTap: () => const AutonomousRobotics(),
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Civil',
                  link:
                      "https://static.wixstatic.com/media/149872_4dc53bb4a2f947069a71604b73b34315~mv2.jpg/v1/fill/w_640,h_640,al_c,q_85,usm_0.66_1.00_0.01,enc_auto/149872_4dc53bb4a2f947069a71604b73b34315~mv2.jpg",
                  description:
                      "Dive into Paridhi's captivating civil domain contests: treasure tracking, bridge making, and more. Click for thrilling opportunities in the field!",
                  onTap: () => const Civil(),
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Electrical',
                  link:
                      "https://www.esa.int/var/esa/storage/images/esa_multimedia/images/2010/04/electrical_component/9636951-4-eng-GB/Electrical_component_pillars.jpg",
                  description:
                      "Dive into Paridhi's dynamic electrical domain events: Electroiquest, Powerblitz. Discover thrilling opportunities by clicking the card. Join us now!",
                  onTap: () => const Electrical(),
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Gaming',
                  link:
                      "https://t3.ftcdn.net/jpg/02/85/90/44/360_F_285904463_52tKiXp592qUhmg24eS3f4k1kGQSji3f.jpg",
                  description:
                      "Dive into Paridhi's sensational gaming tournaments featuring BGMI, FIFA, Valorant, and eFootball. Click to uncover thrilling opportunities in the world of gaming!",
                  onTap: () => const Gaming(),
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'General',
                  link:
                      "https://images.unsplash.com/photo-1628867578021-c2eaad2ce46c?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  description:
                      "Dive into Paridhi's exciting array of general events, from carrom and table tennis to quizzes and chess. Click for exciting opportunities!",
                  onTap: () => const General(),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
