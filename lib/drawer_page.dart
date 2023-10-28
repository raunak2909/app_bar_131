import 'package:app_bar_131/tabs/calls_tab_page.dart';
import 'package:app_bar_131/tabs/status_tab_page.dart';
import 'package:flutter/material.dart';

class DrawerPage extends StatefulWidget {
  const DrawerPage({super.key});

  @override
  State<DrawerPage> createState() => _DrawerPageState();
}

class _DrawerPageState extends State<DrawerPage> {

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
        title: Text(
          'Drawer'
        ),
      ),
      body: listNavigationDest[mIndex],
      drawer: Drawer(
        width: 300,
        backgroundColor: Colors.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(21),
              height: 200,
              color: Colors.blue.shade200,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  children: [
                    CircleAvatar(),
                    SizedBox(width: 11,),
                    Text('Wscube@gmail.com')
                  ],
                ),
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  InkWell(
                    onTap: (){
                      mIndex = 0;
                      Navigator.pop(context);
                      setState(() {

                      });
                    },
                    child: ListTile(
                      leading: Icon(Icons.home),
                      title: Text('Home'),
                    ),
                  ),
                  InkWell(
                    onTap: (){
                      mIndex = 1;
                      Navigator.pop(context);
                      setState(() {

                      });
                    },
                    child: ListTile(
                      leading: Icon(Icons.account_circle),
                      title: Text('My Profile'),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings),
                    title: Text('Settings'),
                  ),
                  ListTile(
                    leading: Icon(Icons.logout),
                    title: Text('Sign Out'),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
