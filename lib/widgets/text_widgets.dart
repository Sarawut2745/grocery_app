import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  TextWidget({
    Key? key,
    required this.text,
    required this.color,
    required this.textSize,
    this.isTitle = false,
    this.maxLine = 10,
  }) : super(key: key);

  final String text;
  final Color color;
  final double textSize;
  final bool isTitle;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLine,
      overflow: TextOverflow.ellipsis,
      style: TextStyle(
        fontSize: textSize,
        color: color,
        fontWeight: isTitle ? FontWeight.bold : FontWeight.normal,
      ),
    );
  }
}
