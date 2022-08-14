import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class BigText extends StatelessWidget {
  final Color? color;
  final String text;
  double size;
  TextOverflow overflow;

  BigText({
    Key? key,
    required this.text,
    this.size = 20,
    this.overflow = TextOverflow.ellipsis,
    this.color = const Color(0xFF332d2b),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(text,
        overflow: overflow,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w400,
          fontSize: size,
        ));
  }
}
