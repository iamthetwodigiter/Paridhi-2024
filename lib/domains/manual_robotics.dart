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
import 'package:paridhi/domains/general.dart';

class ManualRobotics extends StatelessWidget {
  const ManualRobotics({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Manual Robotics',
          style: TextStyle(
            color: Colors.red,
            fontSize: 25,
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
          'Combat Robotics',
          'Autonomous Robotics',
          'Civil',
          'Electrical',
          'Gaming',
          'General'
        ],
        ontap: [
          () => const Coding(),
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
                  name: 'Triathlon',
                  link:
                      'https://lh6.googleusercontent.com/proxy/jK39yGBhSgpcgneAE_-ZhZbV6FKKqF_iPQq7a5_CaTXugcV2Afy1dviVyFFVn0Vt5XudShI9eQXBp5vYaV6Zq7QYF9cG35vLKiPx7cr0aKlcBDFpiRKMnKpX6_UtlRU',
                  description:
                      "Join our exclusive bot racing competition, open to all years! Click to register and learn the rules for the challenge.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Triathlon',
                      link:
                          'https://lh6.googleusercontent.com/proxy/jK39yGBhSgpcgneAE_-ZhZbV6FKKqF_iPQq7a5_CaTXugcV2Afy1dviVyFFVn0Vt5XudShI9eQXBp5vYaV6Zq7QYF9cG35vLKiPx7cr0aKlcBDFpiRKMnKpX6_UtlRU',
                      teamsize: '5',
                      fee: '400',
                      description:
                          'Join our bot racing contest, open to all! Click to sign up and learn the rules for this thrilling challenge. Let the excitement begin!',
                      rulesLink:
                          'https://drive.google.com/file/d/1H4nvTMy17kmb-M-QO5yi2omS0Kf6-8JF/view?usp=drive_link',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Robo Klassiker',
                  link:
                      "https://d8it4huxumps7.cloudfront.net/uploads/images/opportunity/mobile_banner/627f59e8450c5_robo-scoccer.jpg",
                  description:
                      "Join our exclusive bot soccer competition! Bots vie for goals while minimizing penalties. Register now and learn the rules!",
                  onTap: () {
                    return const EventsCards(
                      title: 'Robo Klassiker',
                      link:
                          'https://d8it4huxumps7.cloudfront.net/uploads/images/opportunity/mobile_banner/627f59e8450c5_robo-scoccer.jpg',
                      teamsize: '5',
                      fee: '450',
                      description:
                          'Participate in our exclusive bot soccer contest! Bots compete for goals while avoiding penalties. Enroll now and familiarize yourself with the regulations!',
                      rulesLink:
                          'https://drive.google.com/file/d/1LI768THK0ewj_GUghM4eljnyZUiU0kJv/view?usp=drive_link',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Chakravyuh',
                  link:
                      "https://media.istockphoto.com/id/1225230059/photo/3d-illustration-closeup-of-black-dark-black-labyrinth-stone-walls.jpg?s=612x612&w=0&k=20&c=Wz8P936jqq8rVYZrKKuFYjOS5i5SbKI5OdI2JN2HPik=",
                  description:
                      "Compete in the onspot maze-solving bot challenge, navigate tunnels, reach the exclusive destination. Click to register and learn rules!",
                  onTap: () {
                    return const EventsCards(
                      title: 'Chakravyuh',
                      link:
                          'https://media.istockphoto.com/id/1225230059/photo/3d-illustration-closeup-of-black-dark-black-labyrinth-stone-walls.jpg?s=612x612&w=0&k=20&c=Wz8P936jqq8rVYZrKKuFYjOS5i5SbKI5OdI2JN2HPik=',
                      teamsize: '1',
                      fee: '60',
                      description:
                          'Compete in our onspot maze-solving bot challenge: navigate tunnels and reach the exclusive destination. Click to register and learn the rules!',
                      rulesLink:
                          'https://drive.google.com/file/d/1h0SY0c43S8h_q-tHRhcqAA3Tvt2xc7nF/view?usp=sharing',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Striker Clash',
                  link:
                      "https://images.unsplash.com/photo-1581090466144-8ed89ea98b25?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  description:
                      "Join the exclusive onspot robo carrom competition for all, register now, and discover the rules for this thrilling event!",
                  onTap: () {
                    return const EventsCards(
                      title: 'Striker Clash',
                      link:
                          'https://images.unsplash.com/photo-1581090466144-8ed89ea98b25?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                      teamsize: '1',
                      fee: '40',
                      description:
                          'Join our exclusive onspot robo carrom competition for all! Register now and uncover the rules for this thrilling event!',
                      rulesLink:
                          'https://drive.google.com/file/d/1UB-hJF209ej-4cJqilfy_0gDu9WNw1ki/view?usp=sharing',
                    );
                  },
                ),
              ),
              const SizedBox(height: 15),
              ZoomIn(
                child: Cards(
                  name: 'Triathlon + Robo Klassiker (Combo)',
                  link:
                      "https://images.squarespace-cdn.com/content/v1/5971b972f9a61e57bd29b3bf/cd797d32-02d9-4e3b-a696-4dba9a1ae367/Desktop+Banner+rev1.png",
                  description:
                      "Join the heart-pounding bot racing and soccer competition , open to all years! Click to register and learn the rules for the challenge.",
                  onTap: () {
                    return const EventsCards(
                      title: 'Triathlon + Robo Klassiker (Combo)',
                      link:
                          'https://images.squarespace-cdn.com/content/v1/5971b972f9a61e57bd29b3bf/cd797d32-02d9-4e3b-a696-4dba9a1ae367/Desktop+Banner+rev1.png',
                      teamsize: 'Updated Soon',
                      fee: '750',
                      description:
                          'Join our heart-throbbing bot race plus soccer competition open for all!Register now and uncover the rules for this thrilling event!',
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
