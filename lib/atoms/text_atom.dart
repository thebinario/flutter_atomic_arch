import 'package:flutter/material.dart';

class AtomText extends StatelessWidget {
  final String text;
  final TextStyle? style;

  const AtomText(this.text, {Key? key, this.style}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: style,
    );
  }
}
