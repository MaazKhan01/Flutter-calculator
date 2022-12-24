import 'package:flutter/material.dart';

class MyBtn extends StatelessWidget {
  final String title;
  final Color color;
  final VoidCallback onPress;
  const MyBtn({Key? key, required this.title,this.color = Colors.orange,required this.onPress}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: InkWell(
          onTap: onPress,
          child: Container(
            height: 80,
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Center(
              child: Text(title,style: TextStyle(color: Colors.white)),
            ),
          ),
        ),
      ),
    );
  }
}
