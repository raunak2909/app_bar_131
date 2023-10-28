import 'package:flutter/material.dart';

class StatusTabPage extends StatelessWidget {
  const StatusTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blue.shade200,
        child: Center(
          child: Text('Status', style: TextStyle(
            fontSize: 34, color: Colors.grey
          ),),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){

        },
        child: Icon(Icons.add),
      ),
    );
  }
}
