import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Glutei extends StatelessWidget {
  final String eserciziGlutei;
  Glutei({super.key, required this.eserciziGlutei});

  final List<String> immaginiGlutei = [
    'images/sumo_squat.png',
    'images/glutei_laterali.png',
    'images/glutei_dietro.png',
    'images/glutei_dietro_dxsx.png',
    'images/sumo_squat_barra.png',
  ];

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.greenAccent.shade100,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40.0),
      ),
      content: SizedBox(
        height: 400,
        width: 300,
        child: CarouselImages(
          scaleFactor: 0.1,
          listImages: immaginiGlutei,
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
