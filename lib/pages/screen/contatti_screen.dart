import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Contatti extends StatelessWidget {
  const Contatti({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Uri mail = Uri.parse('mailto:vincenzo.gandolfo7@gmail.com');
    final Uri whatsApp = Uri.parse('whatsapp://send?phone=393471731213');
    final Uri amazon = Uri.parse(
        'https://www.amazon.it/s?k=set+elastici+fitness&crid=JZMB7C8VO7CL&sprefix=%2Caps%2C144&ref=nb_sb_ss_recent_1_0_recent');

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'images/contatti.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 160,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  child: Center(
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 100),
                      color: Colors.white.withOpacity(0.1),
                      child: const ListTile(
                        leading: Icon(
                          Icons.mail_outline,
                          color: Colors.black,
                          size: 36.0,
                        ),
                        title: Text(
                          'E-Mail',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    launchUrl(mail);
                  },
                ),
                GestureDetector(
                  child: Center(
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 100),
                      color: Colors.white.withOpacity(0.1),
                      child: const ListTile(
                        leading: Icon(
                          Icons.whatsapp,
                          color: Colors.black,
                          size: 36.0,
                        ),
                        title: Text(
                          'WhatsApp',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    launchUrl(whatsApp);
                  },
                ),
                GestureDetector(
                  child: Center(
                    child: Card(
                      shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(16),
                        ),
                      ),
                      margin: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 100),
                      color: Colors.white.withOpacity(0.1),
                      child: const ListTile(
                        leading: Icon(
                          Icons.shopping_cart_outlined,
                          color: Colors.black,
                          size: 36.0,
                        ),
                        title: Text(
                          'Amazon',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                      ),
                    ),
                  ),
                  onTap: () {
                    launchUrl(amazon);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
