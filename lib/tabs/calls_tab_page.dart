import 'package:flutter/material.dart';

class CallTabPage extends StatelessWidget {
  const CallTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green.shade200,
      child: Center(
        child: Text('Calls', style: TextStyle(
          fontSize: 34, color: Colors.grey
        ),),
      ),
    );
  }
}
