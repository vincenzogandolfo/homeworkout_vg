import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homeworkout_vg/models/tab_icon_model.dart';
import 'package:homeworkout_vg/pages/screen/profilo_screen.dart';
import 'screen/esercizi_screen.dart';
import 'screen/motivazione_screen.dart';
import 'screen/contatti_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
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
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          bottom: const TabBar(
            indicatorColor: Colors.greenAccent,
            indicatorWeight: 8,
            tabs: [
              Tab(
                icon: TabIconModel(
                  tabIcon: FontAwesomeIcons.heart,
                ),
              ),
              Tab(
                icon: TabIconModel(
                  tabIcon: FontAwesomeIcons.dumbbell,
                ),
              ),
              Tab(
                icon: TabIconModel(
                  tabIcon: FontAwesomeIcons.user,
                ),
              ),
              Tab(
                icon: TabIconModel(
                  tabIcon: FontAwesomeIcons.solidMessage,
                ),
              )
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            Motivazione(),
            Esercizi(),
            Profilo(),
            Contatti(),
          ],
        ),
      ),
    );
  }
}
