import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Schiena extends StatelessWidget {
  final String eserciziSchiena;
  Schiena({super.key, required this.eserciziSchiena});

  final List<String> immaginiSchiena = [
    'images/tirate_orizzontali.png',
    'images/tirate_parallele.png',
    'images/tirate_reverse.png',
    'images/aperture_orizzontali.png',
    'images/aperture_parallele.png',
    'images/tirate_orizzontali_barra.png',
    'images/tirate_reverse_barra.png',
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
          listImages: immaginiSchiena,
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
