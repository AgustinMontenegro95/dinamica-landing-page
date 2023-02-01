import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LinkTextRichTAC extends StatelessWidget {
  const LinkTextRichTAC({
    Key? key,
    required this.title,
    required this.route,
  }) : super(key: key);

  final String title;
  final String route;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.start,
      TextSpan(
        children: [
          const TextSpan(
              text: "             • ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          TextSpan(
              text: title,
              style: const TextStyle(color: Colors.blue, fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, route);
                }),
        ],
      ),
    );
  }
}
