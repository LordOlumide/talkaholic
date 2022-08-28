import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const screen_id = 'Home screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home screen')),
      body: Center(
        child: Text('Home screen'),
      ),
    );
  }
}
