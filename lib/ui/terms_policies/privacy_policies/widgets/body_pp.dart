import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/terms_policies/privacy_policies/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:dinamica_landing_page/ui/widgets/link_email_text_rich.dart';
import 'package:dinamica_landing_page/ui/widgets/return_button.dart';
import 'package:flutter/material.dart';

class BodyPP extends StatelessWidget {
  const BodyPP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                  const ReturnButton(),
                  Center(
                      child: Text(tituloPP,
                          style: titleTACTextStyle.copyWith(
                              decoration: TextDecoration.underline,
                              fontSize: 25),
                          textAlign: TextAlign.center)),
                  spaceTitleBody,
                  Text(cuerpoPP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(datosRecolectadosTituloPP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(datosRecolectadosCuerpoPP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(tratamientoDatosPersonalesTituloPP,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(tratamientosDatosPersonalesCuerpoPP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(informacionCompartidaTituloPP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(informacionCompartidaCuerpoPP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(tranferenciaDatosTituloPP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(transferenciaDatosCuerpoPP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(seguridadDatosPersonalesTituloPP,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(seguridadDatosPersonalesCuerpoPP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(derechosEleccionesUsuariosTituloPP,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(derechosEleccionesUsuariosCuerpoPP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(enlaceSitiosWebTituloPP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(enlaceSitiosWebCuerpoPP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(actualizacionesPoliticasSeguridadTituloPP,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(actualizacionesPoliticasSeguridadCuerpoPP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(informacionContactoTituloPP, style: titleTACTextStyle),
                  spaceTitleBody,
                  LinkEmailTextRich(
                    leftText: aInformacionContactoCuerpoPP,
                    email: bInformacionContactoCuerpoPP,
                    rightText: ".",
                  ),
                  spaceColumn,
                  Text(ultimaActualizacionPP, style: bodyTACTextStyle),
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
