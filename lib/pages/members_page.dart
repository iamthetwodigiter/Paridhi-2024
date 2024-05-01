import 'dart:convert' show json;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:paridhi/common/drawer_menu.dart';
import 'package:paridhi/common/open_link.dart';
import 'package:paridhi/pages/domains.dart';
import 'package:paridhi/pages/merchandise.dart';
import 'package:paridhi/pages/pre_paridhi_events.dart';
import 'package:paridhi/pages/register.dart';
import 'package:paridhi/pages/workshop.dart';

class MembersPage extends StatefulWidget {
  const MembersPage({super.key});
  @override
  State<MembersPage> createState() => _MembersPageState();
}

class _MembersPageState extends State<MembersPage> {
  List<dynamic> data = []; // Initialize data to an empty list

  @override
  void initState() {
    super.initState();
    // Load JSON data
    _loadJsonData();
  }

  Future<void> _loadJsonData() async {
    try {
      String jsonData = await rootBundle.loadString('assets/data.json');
      var parsedData = json.decode(jsonData);
      setState(() {
        data = parsedData['Data'];
        // Sort the data here, so it's only done once
        data.sort((a, b) {
          int yearComparison = (b['Year'] ?? 0).compareTo(a['Year'] ?? 0);
          if (yearComparison != 0) {
            return yearComparison;
          } else {
            return (a['Name'] ?? '').compareTo(b['Name'] ?? '');
          }
        });
      });
    } catch (e) {
      print('Error loading JSON: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text(
          'Our Team',
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
        title: 'Our Team',
        amount: 5,
        option: const [
          'Events',
          'Workshop',
          'Pre-Paridhi Events',
          'Merchandise',
          'Register'
        ],
        ontap: [
          () => const Domains(),
          () => const Workshop(),
          () => const PreParidhiEvents(),
          () => const Merchandise(),
          () => const Register(),
        ],
      ),
      body: Center(
        child: data.isNotEmpty
            ? ListView.builder(
                itemCount: data.length,
                itemBuilder: (context, index) {
                  var item = data[index];
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Container(
                          padding: const EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.transparent,border: Border.all(width: 2, color: const Color.fromARGB(120, 255, 55, 55)),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            children: [
                              item['Image'] != null
                                  ? Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        border: Border.all(
                                          width: 5,
                                          color: const Color.fromARGB(255, 128, 36, 36),
                                        ), // Add a white border
                                      ),
                                      child: ClipOval(
                                        child: CachedNetworkImage(
                                          imageUrl: item['Image'],
                                          fit: BoxFit.contain,
                                          height: 175,
                                          width: 175,
                                          alignment: Alignment
                                              .topCenter, // Adjust the alignment property
                                        ),
                                      ),
                                    )
                                  : const CircleAvatar(
                                      foregroundImage:
                                          CachedNetworkImageProvider(
                                        'https://png.pngitem.com/pimgs/s/649-6490124_katie-notopoulos-katienotopoulos-i-write-about-tech-round.png',
                                      ),
                                      radius: 75,
                                    ),
                              const SizedBox(height: 10),
                              Text(
                                item['Name'],
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mega',
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              Text(
                                item['Year'],
                                style: const TextStyle(
                                  color: Colors.red,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Mega',
                                ),
                                textAlign: TextAlign.center,
                              ),
                              const SizedBox(height: 10),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  OpenLink(
                                    url: '${item['fb_link']}',
                                    asset: 'assets/logo/facebook.png',
                                  ),
                                  const SizedBox(width: 20),
                                  OpenLink(
                                    url: '${item['insta_link']}',
                                    asset: 'assets/logo/instagram.png',
                                  ),
                                  const SizedBox(width: 20),
                                  OpenLink(
                                    url: '${item['li_link']}',
                                    asset: 'assets/logo/linkedin.png',
                                  ),
                                  const SizedBox(width: 20),
                                  OpenLink(
                                    url: '${item['gmail']}',
                                    asset: 'assets/logo/gmail.png',
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  );
                },
              )
            : const CircularProgressIndicator(), // Show loading indicator if data is not loaded
      ),
    );
  }
}
