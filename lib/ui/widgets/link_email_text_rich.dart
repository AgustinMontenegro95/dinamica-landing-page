import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkEmailTextRich extends StatelessWidget {
  const LinkEmailTextRich(
      {Key? key, required this.email, this.leftText, this.rightText})
      : super(key: key);

  final String? leftText;
  final String email;
  final String? rightText;

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      textAlign: TextAlign.justify,
      TextSpan(
        children: [
          TextSpan(text: leftText, style: const TextStyle(fontSize: 18)),
          TextSpan(
              text: email,
              style: TextStyle(color: Colors.blue.shade900, fontSize: 18),
              recognizer: TapGestureRecognizer()
                ..onTap = () async {
                  final Uri uri = Uri.parse('mailto:$email?'
                      'subject=Consulta Dinamica Pay'
                      '&'
                      'body=Insertar consulta aqui.');
                  if (!await launchUrl(uri)) {
                    throw 'Could not launch $uri';
                  }
                }),
          TextSpan(text: rightText, style: const TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
