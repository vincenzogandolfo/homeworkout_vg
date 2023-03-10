import 'package:flutter/material.dart';

class BodyModel extends StatelessWidget {
  final String bodyImage;
  const BodyModel({super.key, required this.bodyImage});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(8),
      height: 100,
      width: 80,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.greenAccent.shade100,
          width: 8,
        ),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        bodyImage,
        fit: BoxFit.fill,
      ),
    );
  }
}
