import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class LinkUrlTextRich extends StatelessWidget {
  const LinkUrlTextRich(
      {Key? key, required this.url, this.leftText, this.rightText, this.name})
      : super(key: key);

  final String? leftText;
  final String url;
  final String? name;
  final String? rightText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.justify,
      TextSpan(
        children: [
          TextSpan(text: leftText, style: const TextStyle(fontSize: 18)),
          TextSpan(
              text: name ?? url,
              style: TextStyle(color: Colors.blue.shade900, fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  launchUrlString(url);
                }),
          TextSpan(text: rightText, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
