import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Stretch extends StatelessWidget {
  final String eserciziStretch;
  Stretch({super.key, required this.eserciziStretch});

  final List<String> immaginiStretch = [
    'images/t_pose.png',
    'images/butterfly_pose.png',
    'images/child_pose.png',
    'images/catcow_pose.png',
    'images/cobra_pose.png',
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
          listImages: immaginiStretch,
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
