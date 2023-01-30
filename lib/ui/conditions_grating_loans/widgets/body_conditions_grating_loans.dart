import 'dart:html';

import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/conditions_grating_loans/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher_string.dart';

class BodyConditionsGratingLoans extends StatelessWidget {
  const BodyConditionsGratingLoans({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle bodyTCTextStyle = const TextStyle(fontSize: 18);
    TextStyle titleTCTextStyle = const TextStyle(
        fontSize: 22, fontWeight: FontWeight.bold, color: primary);

    SizedBox spaceColumn = const SizedBox(height: 50);
    SizedBox spaceTitleBody = const SizedBox(height: 15);
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 100),
                  Center(
                      child: Text(tituloCGL,
                          style: titleTCTextStyle.copyWith(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center)),
                  spaceTitleBody,
                  Text.rich(
                    textAlign: TextAlign.start,
                    TextSpan(
                      children: [
                        TextSpan(text: a0CuerpoCGL, style: bodyTCTextStyle),
                        TextSpan(
                            text: a1CuerpoCGL,
                            style: bodyTCTextStyle.copyWith(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrlString("https://midinamica.com.ar/");
                              }),
                        TextSpan(
                          text: a2CuerpoCGL,
                          style: bodyTCTextStyle,
                        ),
                      ],
                    ),
                  ),
                  spaceTitleBody,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(bCuerpoCGL,
                        style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  ),
                  spaceTitleBody,
                  Text(cCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(ofertaAceptacionPrestamoTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(aOfertaAceptacionPrestamoCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(bOfertaAceptacionPrestamoCuerpoCGL,
                        style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  ),
                  spaceTitleBody,
                  Text(cOfertaAceptacionPrestamoCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(prestamoTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(prestamoCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(desembolsoPrestamoTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(desembolsoPrestamoCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(interesesCompensatoriosTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(interesesCompensatoriosCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(reembolsoTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(reembolsoCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(cancelacionAnticipadaTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(cancelacionAnticipadaCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(vigenciaTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(vigenciaCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(moraTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(moraCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(resolucionEventosIncumplimientosTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(aResolucionEventosIncumplimientosCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(bResolucionEventosIncumplimientosCuerpoCGL,
                        style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  ),
                  spaceTitleBody,
                  Text(cResolucionEventosIncumplimientosCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(responsabilidadTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(responsabilidadCuerpoCGL,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(disposicionesGeneralesTituloCGL,
                      style: titleTCTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text.rich(
                    textAlign: TextAlign.start,
                    TextSpan(
                      children: [
                        TextSpan(
                            text: aDisposicionesGeneralesCuerpoCGL,
                            style: bodyTCTextStyle),
                        TextSpan(
                            text: bDisposicionesGeneralesCuerpoCGL,
                            style: bodyTCTextStyle.copyWith(color: Colors.blue),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.pushNamed(
                                    context, '/terminos-y-condiciones-de-uso');
                              }),
                        TextSpan(
                          text: cDisposicionesGeneralesCuerpoCGL,
                          style: bodyTCTextStyle,
                        ),
                      ],
                    ),
                  ),
                  spaceColumn,
                ],
              ),
            ),
            const Footer(),
          ],
        ),
      ),
    );
  }
}
