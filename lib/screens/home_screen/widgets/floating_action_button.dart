import 'package:flutter/material.dart';

class HomeScreenFAB extends StatefulWidget {
  IconData fabIcon;

  HomeScreenFAB({Key? key, required this.fabIcon}) : super(key: key);

  @override
  State<HomeScreenFAB> createState() => _HomeScreenFABState();
}

class _HomeScreenFABState extends State<HomeScreenFAB> {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(
        widget.fabIcon,
        color: Colors.white,
      ),
      onPressed: () {},
    );
  }
}
