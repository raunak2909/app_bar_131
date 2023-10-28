import 'package:app_bar_131/tabs/calls_tab_page.dart';
import 'package:app_bar_131/tabs/chat_tab_page.dart';
import 'package:app_bar_131/tabs/status_tab_page.dart';
import 'package:flutter/material.dart';

class TabPage extends StatefulWidget {
  @override
  State<TabPage> createState() => _TabPageState();
}

class _TabPageState extends State<TabPage> with SingleTickerProviderStateMixin{
  late TabController mTabController;
  String mTitle = "Whatsapp";

  @override
  void initState() {
    super.initState();

    mTabController = TabController(length: 3, vsync: this);

    mTabController.addListener(() {
      print(mTabController.index);
      if(mTabController.index==0){
        mTitle = "Chats";
      } else if(mTabController.index==1){
        mTitle = "Status";
      } else {
        mTitle = "Calls";
      }
      setState(() {

      });


    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(mTitle),
        bottom: TabBar(
          controller: mTabController,
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: [
            Tab(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.chat),
                  SizedBox(width: 11,),
                  Text('Chats'),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.update),
                SizedBox(width: 11,),
                Text('Status'),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.phone),
                SizedBox(width: 11,),
                Text('Calls'),
              ],
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: mTabController,
        children: [
          ChatTabPage(tabController: mTabController),
          StatusTabPage(),
          CallTabPage()
        ],
      ),
    );
  }
}
