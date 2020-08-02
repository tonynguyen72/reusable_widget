import 'package:flutter/material.dart';

class LinkBtn extends StatelessWidget {
  final Function onPress;
  final String text;
  final Color color;
  LinkBtn({this.onPress, this.text, this.color});
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: FlatButton(
        onPressed: onPress,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(3)),
        child: Text(
          text,
          style: TextStyle(color: color),
        ),
      ),
    );
  }
}
