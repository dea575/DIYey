import 'package:flutter/material.dart';
import 'package:flutterapp/diyeyapp/generatedtutorialwidget3/generated/GeneratedTempatTisuDariStikEsKrimWidget.dart';
import 'package:flutterapp/diyeyapp/generatedtutorialwidget3/generated/GeneratedRectangle21Widget.dart';

/* Frame Frame 1
    Autogenerated by FlutLab FTF Generator
  */
class GeneratedFrame1Widget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.zero,
      child: Container(
        width: 360.0,
        height: 94.0,
        child: Stack(
            fit: StackFit.expand,
            alignment: Alignment.center,
            overflow: Overflow.visible,
            children: [
              Positioned(
                left: 22.0,
                top: 17.0,
                right: null,
                bottom: null,
                width: 315.0,
                height: 47.0,
                child: GeneratedTempatTisuDariStikEsKrimWidget(),
              ),
              Positioned(
                left: 254.0,
                top: 94.0,
                right: null,
                bottom: null,
                width: 81.0,
                height: 63.0,
                child: GeneratedRectangle21Widget(),
              )
            ]),
      ),
    );
  }
}