import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_netflix_responsive_ui/cubits/cubits.dart';
import 'package:flutter_netflix_responsive_ui/screens%20/HomeScreen.dart';

class NavScreen extends StatefulWidget {
  @override
  _NavScreenState createState() => _NavScreenState();
}

class _NavScreenState extends State<NavScreen> {
  final List<Widget> _screens = [
    HomeScreen(key: PageStorageKey("HomeScreen")),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];

  final Map<String, IconData> _icons = {
    'Home': Icons.home,
    'Search': Icons.search,
    "Coming Soon": Icons.queue_play_next,
    "Downloads": Icons.file_download,
    "More": Icons.menu
  };

  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<AppBarCubit>(
        child: _screens[_currentIndex],
        create: (_) => AppBarCubit(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.black,
        items: _icons
            .map((key, value) => MapEntry(
                key,
                BottomNavigationBarItem(
                    icon: Icon(
                      value,
                      size: 30,
                    ),
                    label: key)))
            .values
            .toList(),
        currentIndex: _currentIndex,
        selectedItemColor: Colors.white,
        selectedFontSize: 11,
        unselectedItemColor: Colors.grey,
        unselectedFontSize: 11.0,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
