import 'package:flutter/material.dart';
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
                  colors: <Color>[Colors.deepPurpleAccent, Colors.white]),
            ),
          ),
          title: const Text(
            'Home Workout  VG',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.deepPurpleAccent,
            indicatorWeight: 8,
            tabs: [
              Tab(
                icon: Icon(
                  Icons.fitness_center,
                  color: Colors.black,
                  size: 32,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.textsms,
                  color: Colors.black,
                  size: 32,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.black,
                  size: 32,
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Esercizi(),
            Motivazione(),
            Contatti(),
          ],
        ),
      ),
    );
  }
}
