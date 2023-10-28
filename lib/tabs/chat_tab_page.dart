import 'package:flutter/material.dart';

class ChatTabPage extends StatelessWidget {
  TabController tabController;
  ChatTabPage({required this.tabController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.orange.shade200,
          child: Center(
            child: Text('Chats', style: TextStyle(
              fontSize: 34, color: Colors.grey
            ),),
          ),
        ),
        ElevatedButton(onPressed: (){
          tabController.animateTo(1, duration: Duration(seconds: 2),curve: Curves.bounceOut);
        }, child: Text('Next'))
      ],
    );
  }
}
