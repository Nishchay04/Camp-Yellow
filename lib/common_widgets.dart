import 'package:flutter/cupertino.dart';

Widget commonText(
  String text,
  BuildContext context,
  double textSize,
  Color textColor,
  FontWeight fontWeight, [
  TextAlign textAlign = TextAlign.center,
  TextDecoration textDecoration = TextDecoration.none,
  TextOverflow overflow = TextOverflow.clip,
]) {
  return Text(
    text,
    textAlign: textAlign,
    style: TextStyle(
      fontSize: textSize,
      color: textColor,
      fontWeight: fontWeight,
      decoration: textDecoration,
    ),
    overflow: overflow,
    softWrap: true,
  );
}
