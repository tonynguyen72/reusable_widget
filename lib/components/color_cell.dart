import 'package:app_bar/utils/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ColorCell extends StatelessWidget {
  final Color color;
  ColorCell({this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 80,
      width: 80,
      decoration: BoxDecoration(color: color),
      child: context.watch<AppSettings>().appColor == color
          ? Icon(Icons.check_circle, color: Colors.white)
          : SizedBox(),
    );
  }
}
