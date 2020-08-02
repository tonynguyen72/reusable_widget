import 'package:flutter/material.dart';

class Btn extends StatelessWidget {
  final Function onPress;
  final String text;
  final Color color;
  Btn({this.onPress, this.text, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      margin: EdgeInsets.all(10),
      child: FlatButton(
        onPressed: onPress,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        child: Text(
          text,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
