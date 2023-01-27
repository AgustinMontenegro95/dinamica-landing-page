import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: backgroundDark,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        columnMainAxisSize: MainAxisSize.min,
        children: [
          ResponsiveRowColumnItem(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 20, 20, 20),
              child: Image.asset(
                  "assets/images/dinamica/dinamica-center-red.png",
                  height: ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
                      ? 70
                      : 100,
                  fit: BoxFit.contain),
            ),
          ),
          ResponsiveRowColumnItem(
            rowFit: FlexFit.loose,
            columnFit: FlexFit.loose,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                    style: bodyTextStyle.copyWith(
                        fontSize: 18, color: Colors.white, height: 2),
                    children: [
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrlString(
                                  "https://www.google.com.ar/maps/search/dinamica/@-27.7820161,-64.3138554,12z/data=!3m1!4b1");
                            },
                          text: "Ubicación"),
                      const TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrlString("http://www.midinamica.com.ar/");
                            },
                          text: "Sitio web"),
                      const TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              Navigator.pushNamed(
                                  context, '/politicas-privacidad');
                            },
                          text: "Políticas de privacidad"),
                      const TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrlString(
                                  "https://www.instagram.com/dinamica.com.ar");
                            },
                          text: "Instagram"),
                      const TextSpan(text: "  •  "),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrlString(
                                  "https://www.facebook.com/tarjetadinamica");
                            },
                          text: "Facebook"),
                    ],
                  ),
                ),
                RichText(
                  textAlign: TextAlign.left,
                  text: TextSpan(
                      style: bodyTextStyle.copyWith(
                          fontSize: 14, color: Colors.white, height: 1),
                      children: [
                        const TextSpan(text: '\n'),
                        TextSpan(
                          text:
                              "Peatonal Tucumán 189, Santiago del Estero, Argentina. Copyright © DINÁMICA. Todos los derechos reservados.",
                          style: bodyTextStyle.copyWith(
                              fontSize: 15, color: Colors.white),
                        ),
                      ]),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
