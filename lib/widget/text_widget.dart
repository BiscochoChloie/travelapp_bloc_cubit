import 'package:flutter/material.dart';

class BoldTextWidget extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const BoldTextWidget(
      {Key? key, this.size = 30, required this.text, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style:
          TextStyle(color: color, fontSize: size, fontWeight: FontWeight.bold),
    );
  }
}

class MediumTextWidget extends StatelessWidget {
  final double size;
  final String text;
  final Color color;

  const MediumTextWidget(
      {Key? key, this.size = 16, required this.text, this.color = Colors.black})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(color: color, fontSize: size),
    );
  }
}
