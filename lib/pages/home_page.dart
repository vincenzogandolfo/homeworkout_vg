import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homeworkout_vg/models/tab_icon_model.dart';
import 'package:homeworkout_vg/pages/screen/profilo_screen.dart';
import 'screen/esercizi_screen.dart';
import 'screen/motivazione_screen.dart';
import 'screen/contatti_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

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
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          centerTitle: true,
          bottom: TabBar(
            controller: _tabController,
            indicatorColor: Colors.greenAccent,
            indicatorWeight: 8,
            tabs: const [
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
        body: TabBarView(
          controller: _tabController,
          children: const [
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
