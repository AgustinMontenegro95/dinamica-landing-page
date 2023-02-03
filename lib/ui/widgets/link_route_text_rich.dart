import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class LinkRouteTextRich extends StatelessWidget {
  const LinkRouteTextRich(
      {Key? key,
      required this.link,
      required this.route,
      this.leftText,
      this.rightText})
      : super(key: key);

  final String? leftText;
  final String link;
  final String route;
  final String? rightText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.start,
      TextSpan(
        children: [
          TextSpan(text: leftText, style: const TextStyle(fontSize: 18)),
          TextSpan(
              text: link,
              style: TextStyle(color: Colors.blue.shade900, fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  Navigator.pushNamed(context, route);
                }),
          TextSpan(text: rightText, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
