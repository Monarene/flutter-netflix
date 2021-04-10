import 'package:flutter/material.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {

  final List<Widget> _screens = [
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final Map<String, IconData> _icons  = {
    'Home': Icons.home,
    'Search': Icons.search,
    "Coming Soon": Icons.queue_play_next,
    "Downloads": Icons.file_download,
    "More": Icons.menu
  };

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
