import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:travelapp_bloc_cubit/widget/text_widget.dart';

class SquareButton extends StatelessWidget {
  final String text;
  final IconData? icon;
  final Color? color;
  final Color? backgroundColor;
  double? size;
  final Color? borderColor;
  bool? isIcon;

  SquareButton(
      {super.key,
      this.color,
      this.backgroundColor = Colors.grey,
      this.size = 50,
      this.borderColor = Colors.grey,
      this.text = '',
      this.icon,
      this.isIcon = false});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: size,
        height: size,
        decoration: BoxDecoration(
            border: Border.all(color: borderColor!, width: 1.0),
            borderRadius: BorderRadius.circular(15),
            color: backgroundColor),
        child: Center(
            child: isIcon == false
                ? MediumTextWidget(
                    text: text,
                    color: Colors.black,
                  )
                : Icon(
                    icon,
                    color: color,
                  )));
  }
}
