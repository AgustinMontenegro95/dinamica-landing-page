import 'package:dinamica_landing_page/constants/colors.dart';
import 'package:dinamica_landing_page/ui/privacy_policies/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class BodyPP extends StatelessWidget {
  const BodyPP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle bodyPPTextStyle = const TextStyle(fontSize: 18);
    TextStyle titlePPTextStyle = const TextStyle(
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
                      child: Text(tituloPP,
                          style: titlePPTextStyle.copyWith(
                              decoration: TextDecoration.underline,
                              fontSize: 25),
                          textAlign: TextAlign.center)),
                  spaceTitleBody,
                  Text(cuerpoPP,
                      style: bodyPPTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(datosRecolectadosTituloPP, style: titlePPTextStyle),
                  spaceTitleBody,
                  Text(datosRecolectadosCuerpoPP,
                      style: bodyPPTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(tratamientoDatosPersonalesTituloPP,
                      style: titlePPTextStyle),
                  spaceTitleBody,
                  Text(tratamientosDatosPersonalesCuerpoPP,
                      style: bodyPPTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(informacionCompartidaTituloPP, style: titlePPTextStyle),
                  spaceTitleBody,
                  Text(informacionCompartidaCuerpoPP,
                      style: bodyPPTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(tranferenciaDatosTituloPP, style: titlePPTextStyle),
                  spaceTitleBody,
                  Text(transferenciaDatosCuerpoPP,
                      style: bodyPPTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(seguridadDatosPersonalesTituloPP,
                      style: titlePPTextStyle),
                  spaceTitleBody,
                  Text(seguridadDatosPersonalesCuerpoPP,
                      style: bodyPPTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(derechosEleccionesUsuariosTituloPP,
                      style: titlePPTextStyle),
                  spaceTitleBody,
                  Text(derechosEleccionesUsuariosCuerpoPP,
                      style: bodyPPTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(enlaceSitiosWebTituloPP, style: titlePPTextStyle),
                  spaceTitleBody,
                  Text(enlaceSitiosWebCuerpoPP,
                      style: bodyPPTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(actualizacionesPoliticasSeguridadTituloPP,
                      style: titlePPTextStyle),
                  spaceTitleBody,
                  Text(actualizacionesPoliticasSeguridadCuerpoPP,
                      style: bodyPPTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(informacionContactoTituloPP, style: titlePPTextStyle),
                  spaceTitleBody,
                  Text.rich(
                    textAlign: TextAlign.start,
                    TextSpan(
                      children: [
                        TextSpan(
                            text: aInformacionContactoCuerpoPP,
                            style: bodyPPTextStyle),
                        TextSpan(
                            text: bInformacionContactoCuerpoPP,
                            style: const TextStyle(
                                color: Colors.blue, fontSize: 18),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () async {
                                final Uri uri =
                                    Uri.parse('mailto:info@midinamica.com.ar?'
                                        'subject=Consulta Dinamica Pay'
                                        '&'
                                        'body=Insertar consulta aqui.');
                                if (!await launchUrl(uri)) {
                                  throw 'Could not launch $uri';
                                }
                              }),
                        const TextSpan(
                            text: ".",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18)),
                      ],
                    ),
                  ),
                  spaceColumn,
                  Text(ultimaActualizacionPP, style: bodyPPTextStyle),
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
