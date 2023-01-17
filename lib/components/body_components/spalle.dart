import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Spalle extends StatelessWidget {
  final String eserciziSpalle;
  Spalle({super.key, required this.eserciziSpalle});

  final List<String> immaginiSpalle = [
    'images/alzate_laterali.png',
    'images/alzate_frontali_orizzontali.png',
    'images/alzate_frontali_parallele.png',
    'images/alzate_180.png',
    'images/alzate_almento.png',
    'images/spinte_alte.png',
    'images/spinte_rotazione.png',
    'images/alzate_frontali_barra.png',
    'images/alzate_almento_barra.png',
    'images/spinte_alte_barra.png',
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
          listImages: immaginiSpalle,
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
