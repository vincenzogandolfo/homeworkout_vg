import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Gambe extends StatelessWidget {
  final String eserciziGambe;
  Gambe({super.key, required this.eserciziGambe});

  final List<String> immaginiGambe = [
    'images/squat.png',
    'images/polpacci.png',
    'images/leg_extension.png',
    'images/leg_extension_singolo.png',
    'images/leg_curl.png',
    'images/leg_curl_singolo.png',
    'images/squat_barra.png',
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.black,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      content: SizedBox(
        height: 400,
        width: 300,
        child: CarouselImages(
          scaleFactor: 0.1,
          listImages: immaginiGambe,
          height: 450.0,
          borderRadius: 40.0,
          verticalAlignment: Alignment.center,
          onTap: (index) {
            print('Tapped on page $index');
          },
        ),
      ),
    );
  }
}
