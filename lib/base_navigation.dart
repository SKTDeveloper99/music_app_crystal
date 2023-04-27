import 'package:flutter/material.dart';
import 'package:music_app_crystal/example_playlist.dart';
import 'package:music_app_crystal/example_radio.dart';
import 'package:music_app_crystal/funny_dance.dart';
import 'package:music_app_crystal/settings.dart';

class BaseNavigation extends StatefulWidget {
  const BaseNavigation({super.key});

  @override
  State<BaseNavigation> createState() => _BaseNavigationState();
}

class _BaseNavigationState extends State<BaseNavigation> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    FunnyDance(),
    PlaylistPage(),
    RadioPage(),
    SettingsPage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.red,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Playlist',
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.soup_kitchen_sharp),
            label: 'Surprise',
            backgroundColor: Colors.purple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            backgroundColor: Colors.pink,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}