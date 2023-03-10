import 'package:flutter/material.dart';

import '../../models/text_white_model.dart';

class Motivazione extends StatelessWidget {
  const Motivazione({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                const SizedBox(
                  height: 20,
                ),
                Image.asset(
                  'images/logo.png',
                  height: 60,
                ),
                const Text(
                  'Motivazione',
                  style: TextStyle(
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Il Fitness non è solo fatica ma..',
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.all(28),
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TextWhiteModel('SALUTE'),
                        TextWhiteModel('AUTOSTIMA'),
                        TextWhiteModel('FELICITÀ'),
                        TextWhiteModel('SFOGO'),
                        TextWhiteModel('VITA'),
                        SizedBox(height: 10),
                        Text(
                          'INIZIA ORA',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'PRENDITI CURA DI TE',
                          style: TextStyle(
                            fontSize: 26,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: Container(
                  color: Colors.white,
                )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
