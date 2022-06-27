import 'package:flutter/material.dart';

/* Rectangle Rectangle 23
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedRectangle23Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pushNamed(context, '/GeneratedHomeWidget'),
      child: Container(
        width: 146.0,
        height: 52.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          border: Border.all(
            width: 1.0,
            color: Color.fromARGB(255, 0, 0, 0),
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(30.0),
          child: Container(
            color: Color.fromARGB(255, 119, 104, 180),
          ),
        ),
      ),
    );
  }
}