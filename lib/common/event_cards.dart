import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:paridhi/common/open_link.dart';

class EventsCards extends StatelessWidget {
  final String title;
  final String link;
  final String teamsize;
  final String fee;
  final String description;
  final String rulesLink;
  const EventsCards({
    super.key,
    required this.title,
    required this.link,
    required this.teamsize,
    required this.fee,
    required this.description,
    required this.rulesLink,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Event Details',
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
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            CachedNetworkImage(imageUrl: link),
            const SizedBox(height: 20),
            Text(
              title,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mega',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'TeamSize: $teamsize',
              style: const TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mega',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              'Fee: ${fee.toString()}',
              style: const TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mega',
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            Text(
              description,
              style: const TextStyle(
                color: Color.fromARGB(255, 201, 201, 201),
                fontSize: 14,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 20),
            rulesLink.isNotEmpty
                ? OpenLink(url: rulesLink, asset: 'Read Rules Here')
                : const Text(
                    'Rules Updated Soon',
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Mega',
                    ),
                    textAlign: TextAlign.center,
                  ),
            const SizedBox(height: 20),
            const Text(
              'Registration Link will be Updated Soon !',
              style: TextStyle(
                color: Colors.red,
                fontSize: 15,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mega',
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
