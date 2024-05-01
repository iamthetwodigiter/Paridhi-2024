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
import 'package:paridhi/domains/gaming.dart';
import 'package:paridhi/domains/manual_robotics.dart';

class General extends StatelessWidget {
  const General({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'General',
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
          'Civil',
          'Electrical',
          'Gaming'
        ],
        ontap: [
          () => const Coding(),
          () => const ManualRobotics(),
          () => const CombatRobotics(),
          () => const AutonomousRobotics(),
          () => const Civil(),
          () => const Electrical(),
          () => const Gaming(),
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
                  name: 'Carrom',
                  link:
                      'https://www.mpl.live/blog/wp-content/uploads/2020/11/shutterstock_1106162195-scaled.jpg',
                  description:
                      "Experience the thrill of a carrom tournament. Click to register and uncover the rules for this exciting event.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Carrom',
                      link:
                          'https://www.mpl.live/blog/wp-content/uploads/2020/11/shutterstock_1106162195-scaled.jpg',
                      teamsize: '2',
                      fee: '80',
                      description:
                          'Experience the thrill of a carrom tournament. Click to register and uncover the rules for this exciting event.',
                      rulesLink:
                          'https://drive.google.com/file/d/1rv5a16TzUJPgErDEyQkLv_7CXl_7CYc9/view?usp=drive_link',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Table Tennis',
                  link:
                      "https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/momhllweruehw0ud2m2r",
                  description:
                      "Embark on a thrilling table tennis journey to rediscover your childhood joy. Click to register and uncover the rules today!",
                  onTap: () {
                    return const EventsCards(
                      title: 'Table Tennis',
                      link:
                          'https://img.olympics.com/images/image/private/t_s_pog_staticContent_hero_xl_2x/f_auto/primary/momhllweruehw0ud2m2r',
                      teamsize: '1',
                      fee: '70',
                      description:
                          'Embark on a thrilling table tennis journey to rediscover childhood joy. Click to register and uncover the rules today!',
                      rulesLink:
                          '',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Binge Quiz',
                  link:
                      "https://t3.ftcdn.net/jpg/03/45/97/36/360_F_345973621_sMifpCogXNoIDjmXlbLwx1QZA5ZmQVl8.jpg",
                  description:
                      "Embark on an intriguing quiz journey! Click to register and unveil the rules of this captivating binge-worthy challenge.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Binge Quiz',
                      link:
                          'https://t3.ftcdn.net/jpg/03/45/97/36/360_F_345973621_sMifpCogXNoIDjmXlbLwx1QZA5ZmQVl8.jpg',
                      teamsize: '2',
                      fee: '40',
                      description:
                          'Embark on an intriguing quiz journey! Click to register and unveil the rules of this captivating binge-worthy challenge.',
                      rulesLink:
                          'https://drive.google.com/file/d/1NNiXESBPHj7p2nbuIMjUM9E7MJwgkvEl/view?usp=sharing',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Chess',
                  link:
                      "https://www.woodenearth.com/cdn/shop/articles/disadvantages-of-chess_1024x1024.jpg?v=1676970151",
                  description:
                      "Register for a chess competition to test your skills & intellect. Click to unravel the challenge and learn the rules elegantly.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Chess',
                      link:
                          'https://www.woodenearth.com/cdn/shop/articles/disadvantages-of-chess_1024x1024.jpg?v=1676970151',
                      teamsize: '1',
                      fee: 'Rs. 30 for onspot (10th & 12th May) & Rs. 500 for championship(11th May)',
                      description:
                          'Register for a chess competition to test your skills and intellect. Click to unravel the challenge and learn the rules elegantly.',
                      rulesLink:
                          '',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Darts',
                  link:
                      "https://www.shutterstock.com/image-photo/darts-arrows-target-center-600nw-135168692.jpg",
                  description:
                      "Test your aim with dart challenges! Click to register and learn the rules. Unveil your aiming prowess in this thrilling game.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Darts',
                      link:
                          'https://www.shutterstock.com/image-photo/darts-arrows-target-center-600nw-135168692.jpg',
                      teamsize: '1',
                      fee: '30',
                      description:
                          'Test your aim with dart challenges! Click to register and learn the rules. Unveil your aiming prowess in this thrilling game.',
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
