import 'package:flutter/material.dart';

class Motivazione extends StatelessWidget {
  const Motivazione({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Image.asset(
          'images/motivazione.png',
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
