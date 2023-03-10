import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'screen/esercizi_screen.dart';
import 'screen/motivazione_screen.dart';
import 'screen/contatti_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Colors.greenAccent, Colors.white]),
            ),
          ),
          title: const Text(
            'HomeWorkout  VG',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.greenAccent,
            indicatorWeight: 8,
            tabs: [
              Tab(
                icon: Icon(
                  FontAwesomeIcons.heart,
                  color: Colors.black,
                  size: 28,
                ),
              ),
              Tab(
                icon: Icon(
                  FontAwesomeIcons.dumbbell,
                  color: Colors.black,
                  size: 28,
                ),
              ),
              Tab(
                icon: Icon(
                  FontAwesomeIcons.message,
                  color: Colors.black,
                  size: 28,
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Motivazione(),
            Esercizi(),
            Contatti(),
          ],
        ),
      ),
    );
  }
}
