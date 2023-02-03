import 'package:flutter/material.dart';

class UnderlineTextRich extends StatelessWidget {
  const UnderlineTextRich({
    Key? key,
    required this.underlineText,
    required this.normalText,
  }) : super(key: key);

  final String underlineText;
  final String normalText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.justify,
      TextSpan(
        children: [
          TextSpan(
            text: underlineText,
            style: const TextStyle(
                fontSize: 18, decoration: TextDecoration.underline),
          ),
          TextSpan(
            text: normalText,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
