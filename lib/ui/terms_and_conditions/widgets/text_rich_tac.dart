import 'package:flutter/material.dart';

class TextRichTAC extends StatelessWidget {
  const TextRichTAC({
    Key? key,
    required this.boldFont,
    required this.normalFont,
  }) : super(key: key);

  final String boldFont;
  final String normalFont;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.justify,
      TextSpan(
        children: [
          TextSpan(
              text: boldFont,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          TextSpan(
            text: normalFont,
            style: const TextStyle(fontSize: 18),
          ),
        ],
      ),
    );
  }
}
