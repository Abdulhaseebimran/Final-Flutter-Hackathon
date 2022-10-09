import 'package:final_hackathon/constants/colors._constant.dart';
import 'package:flutter/material.dart';

Widget textWidget({
  required String text,
  int? color,
  double fontSize = 14,
  double lineHeight = 1.3,
  FontWeight? fontWeight = FontWeight.normal,
  TextAlign textAlign = TextAlign.left,
}) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
      color: Colors.white,
      fontSize: fontSize,
      height: lineHeight,
      fontWeight: fontWeight,
    ),
  );
}