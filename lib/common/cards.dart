import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class Cards extends StatelessWidget {
  final String link;
  final String name;
  final String description;
  final Function onTap;
  const Cards({
    super.key,
    required this.link,
    required this.name,
    required this.description,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => onTap()),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
        height: 175,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: CachedNetworkImageProvider(link),
            fit: BoxFit.fitWidth,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.4),
              BlendMode.modulate,
            ),
          ),
        ),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              style: BorderStyle.solid,
              width: 2,
              color: const Color.fromARGB(255, 134, 66, 66),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text(
                name,
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Mega',
                ),
                textAlign: TextAlign.center,
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
