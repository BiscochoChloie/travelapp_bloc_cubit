import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  bool? isResponsive;
  double? width;
  ButtonWidget({this.isResponsive = false, this.width, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 40,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.purple),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Icon(
            Icons.arrow_forward_ios_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
