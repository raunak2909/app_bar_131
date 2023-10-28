import 'package:app_bar_131/tabs/calls_tab_page.dart';
import 'package:app_bar_131/tabs/chat_tab_page.dart';
import 'package:app_bar_131/tabs/status_tab_page.dart';
import 'package:flutter/material.dart';

class BottomNavPage extends StatefulWidget {
  const BottomNavPage({super.key});

  @override
  State<BottomNavPage> createState() => _BottomNavPageState();
}

class _BottomNavPageState extends State<BottomNavPage> {

  List<Widget> listNavigationDest= [
    StatusTabPage(),
    CallTabPage(),
    StatusTabPage(),
    CallTabPage(),
  ];

  int mIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bottom Nav'),
      ),
      body: listNavigationDest[mIndex],
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.orange.shade200,
        labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
        selectedIndex: mIndex,
        onDestinationSelected: (index){
          mIndex = index;
          setState(() {

          });
        },
        destinations: [
          NavigationDestination(
              icon: Icon(Icons.home), label: 'Home',
            selectedIcon: Icon(Icons.home_filled),
          ),
          NavigationDestination(icon: Icon(Icons.access_time), label: 'Profile', selectedIcon: Icon(Icons.access_time_filled_sharp),),
          NavigationDestination(icon: Icon(Icons.explore), label: 'Explore'),
          NavigationDestination(icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}
