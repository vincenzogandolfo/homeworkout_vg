import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Cardio extends StatelessWidget {
  final String eserciziCardio;
  Cardio({super.key, required this.eserciziCardio});

  final List<String> immaginiCardio = [
    'images/corsa.png',
    'images/bici.png',
    'images/jump_squat.png',
    'images/skip.png',
    'images/jumping_jack.png',
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
          listImages: immaginiCardio,
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
