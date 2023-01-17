import 'package:flutter/material.dart';
import 'package:homeworkout_vg/components/body_model.dart';

import '../../components/body_components/addome.dart';
import '../../components/body_components/braccia.dart';
import '../../components/body_components/cardio.dart';
import '../../components/body_components/gambe.dart';
import '../../components/body_components/glutei.dart';
import '../../components/body_components/petto.dart';
import '../../components/body_components/schiena.dart';
import '../../components/body_components/spalle.dart';
import '../../components/body_components/stretch.dart';

class Esercizi extends StatelessWidget {
  const Esercizi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'images/esercizi.png',
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            bottom: 80,
            left: 0,
            right: 0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: const BodyModel(bodyImage: 'images/petto.png'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Petto(
                            eserciziPetto: 'Petto',
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(bodyImage: 'images/schiena.png'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Schiena(
                            eserciziSchiena: 'Schiena',
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(bodyImage: 'images/spalle.png'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Spalle(
                            eserciziSpalle: 'Spalle',
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: const BodyModel(bodyImage: 'images/braccia.png'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Braccia(
                            eserciziBraccia: 'Braccia',
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(bodyImage: 'images/gambe.png'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Gambe(
                            eserciziGambe: 'Gambe',
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(bodyImage: 'images/glutei.png'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Glutei(
                            eserciziGlutei: 'Glutei',
                          ),
                        );
                      },
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    GestureDetector(
                      child: const BodyModel(bodyImage: 'images/cardio.png'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Cardio(
                            eserciziCardio: 'Cardio',
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(bodyImage: 'images/addome.png'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Addome(
                            eserciziAddome: 'Addome',
                          ),
                        );
                      },
                    ),
                    GestureDetector(
                      child: const BodyModel(bodyImage: 'images/stretch.png'),
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) => Stretch(
                            eserciziStretch: 'Stretch',
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

/*
GestureDetector(
                    child: const BodyModel(bodyImage: 'images/petto.png'),
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (context) => Petto(
                          eserciziPetto: 'Petto',
                        ),
                      );
                    },
                  ),
*/
