import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void _launchURL(String url, BuildContext context) async {
  Uri link = Uri.parse(url);
  if (url != 'null') {
    try {
      if (await canLaunchUrl(link)) {
        await launchUrl(link, mode: LaunchMode.platformDefault);
      } else {
        throw 'Could not launch $url';
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error: $e')),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text(
          'Doesn\'t have account!',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red),
        ),
        backgroundColor: Color.fromARGB(196, 0, 0, 0),
        showCloseIcon: true,
        duration: Duration(milliseconds: 750),
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.35, color: Colors.red),
          borderRadius: BorderRadius.all(
            Radius.circular(10),
          ),
        ),
      ),
    );
  }
}

void _launchGmail(String email) async {
  final Uri emailUri = Uri(
    scheme: 'mailto',
    path: email,
  );
  if (await canLaunchUrl(emailUri)) {
    await launchUrl(emailUri);
  } else {
    throw 'Could not launch $email';
  }
}

class OpenLink extends StatelessWidget {
  final String url;
  final String asset;

  const OpenLink({
    super.key,
    required this.url,
    required this.asset,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => url.contains('gmail.com')
          ? _launchGmail(url)
          : _launchURL(url, context),
      child: asset.contains('assets')
          ? Image.asset(
              asset,
              width: 30,
              height: 30,
            )
          : Text(
              asset,
              style: const TextStyle(
                color: Colors.red,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: 'Mega',
              ),
              textAlign: TextAlign.center,
            ),
    );
  }
}
