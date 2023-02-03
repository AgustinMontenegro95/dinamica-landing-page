import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Text.rich(
        textAlign: TextAlign.start,
        TextSpan(
          children: [
            TextSpan(
                text: "Políticas de DINÁMICA",
                style: const TextStyle(color: primary, fontSize: 18),
                recognizer: TapGestureRecognizer()
                  ..onTap = () {
                    Navigator.pushNamed(context, '/terminos-y-politicas');
                  }),
            const TextSpan(
                text: " >",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          ],
        ),
      ),
    );
  }
}
