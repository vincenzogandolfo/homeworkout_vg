import 'package:flutter/material.dart';
import 'package:homeworkout_vg/models/top_screen_model.dart';

import '../../models/components_model.dart';
import '../../models/type_button_model.dart';
import '../../widgets/body_components/addome.dart';
import '../../widgets/body_components/braccia.dart';
import '../../widgets/body_components/cardio.dart';
import '../../widgets/body_components/gambe.dart';
import '../../widgets/body_components/glutei.dart';
import '../../widgets/body_components/petto.dart';
import '../../widgets/body_components/schiena.dart';
import '../../widgets/body_components/spalle.dart';
import '../../widgets/body_components/stretch.dart';

class Esercizi extends StatelessWidget {
  const Esercizi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopScreenModel(
            title: 'Esercizi',
            subtitle: 'Seleziona una parte del corpo!',
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          GestureDetector(
                            child:
                                const BodyModel(bodyImage: 'images/petto.png'),
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
                            child: const BodyModel(
                                bodyImage: 'images/schiena.png'),
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
                            child:
                                const BodyModel(bodyImage: 'images/spalle.png'),
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
                            child: const BodyModel(
                                bodyImage: 'images/braccia.png'),
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
                            child:
                                const BodyModel(bodyImage: 'images/gambe.png'),
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
                            child:
                                const BodyModel(bodyImage: 'images/glutei.png'),
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
                            child:
                                const BodyModel(bodyImage: 'images/cardio.png'),
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
                            child:
                                const BodyModel(bodyImage: 'images/addome.png'),
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
                            child: const BodyModel(
                                bodyImage: 'images/stretch.png'),
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
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(28),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.greenAccent,
                    ),
                    child: Row(
                      children: [
                        const TypeButtonModel('Uomo'),
                        Container(
                          height: 40,
                          width: 1,
                          color: Colors.white,
                        ),
                        const TypeButtonModel('Donna'),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
