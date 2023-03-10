import 'package:flutter/material.dart';

class TextWhiteModel extends StatelessWidget {
  final String testo;
  const TextWhiteModel(this.testo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      testo,
      style: const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}
