import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Petto extends StatelessWidget {
  final String eserciziPetto;
  Petto({super.key, required this.eserciziPetto});

  final List<String> immaginiPetto = [
    'images/spinte.png',
    'images/spinte_singole.png',
    'images/croci.png',
    'images/croci_singole.png',
    'images/pullover.png',
    'images/spinte_strette_orizzontali.png',
    'images/spinte_strette_parallele.png',
    'images/alzate_diagonali.png',
    'images/alzate_diagonali_singole.png',
    'images/spinte_barra.png',
    'images/spinte_strette_barra.png',
    'images/pullover_barra.png',
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
          listImages: immaginiPetto,
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
