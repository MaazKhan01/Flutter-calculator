import 'package:flutter/material.dart';
import 'home_screen.dart';

class ScreenTwo extends StatefulWidget {
  const ScreenTwo({Key? key}) : super(key: key);

  @override
  State<ScreenTwo> createState() => _ScreenTwoState();
}

class _ScreenTwoState extends State<ScreenTwo> {
  @override
  Widget build(BuildContext context) {
    return Column(

        children: [
          Text('screen Twoo')
        ],
    );
  }
}
