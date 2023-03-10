import 'package:flutter/material.dart';
import 'package:carousel_images/carousel_images.dart';

class Braccia extends StatelessWidget {
  final String eserciziBraccia;
  Braccia({super.key, required this.eserciziBraccia});

  final List<String> immaginiBraccia = [
    'images/bicipiti_orizzontali.png',
    'images/bicipiti_paralleli.png',
    'images/bicipiti_reverse.png',
    'images/tricipiti_inbasso.png',
    'images/tricipiti_inavanti.png',
    'images/tricipiti_dietro.png',
    'images/bicipiti_orizzontali_barra.png',
    'images/bicipiti_reverse_barra.png',
    'images/tricipiti_inbasso_barra.png',
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
          listImages: immaginiBraccia,
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
