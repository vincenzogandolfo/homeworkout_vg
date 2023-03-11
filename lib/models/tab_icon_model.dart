import 'package:flutter/material.dart';

class TabIconModel extends StatelessWidget {
  final IconData tabIcon;
  const TabIconModel({super.key, required this.tabIcon});

  @override
  Widget build(BuildContext context) {
    return Icon(
      tabIcon,
      color: Colors.black,
      size: 24,
    );
  }
}
