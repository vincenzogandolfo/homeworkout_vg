import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Addome extends StatelessWidget {
  final String eserciziAddome;
  Addome({super.key, required this.eserciziAddome});

  final List<String> immaginiAddome = [
    'images/crunch_down.png',
    'images/fisarmonica.png',
    'images/addome_laterale.png',
    'images/ginocchia_alzate.png',
    'images/alzate_gambe_unite.png',
    'images/alzate_gambe_singole.png',
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
          listImages: immaginiAddome,
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
