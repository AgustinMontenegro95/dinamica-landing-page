import 'package:dinamica_landing_page/ui/privacy_policies/widgets/constant_data.dart';
import 'package:flutter/material.dart';

class BodyPP extends StatelessWidget {
  const BodyPP({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle bodyPPTextStyle = const TextStyle(fontSize: 18);
    TextStyle titlePPTextStyle =
        const TextStyle(fontSize: 25, fontWeight: FontWeight.bold);

    SizedBox spaceColumn = const SizedBox(height: 50);
    SizedBox spaceTitleBody = const SizedBox(height: 15);
    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 100),
              Center(child: Text(tituloPP, style: titlePPTextStyle)),
              spaceTitleBody,
              Text(cuerpoPP,
                  style: bodyPPTextStyle, textAlign: TextAlign.justify),
              spaceColumn,
              Text(datosRecolectadosTituloPP, style: titlePPTextStyle),
              spaceTitleBody,
              Text(datosRecolectadosCuerpoPP,
                  style: bodyPPTextStyle, textAlign: TextAlign.justify),
              spaceColumn,
              Text(tratamientoDatosPersonalesTituloPP, style: titlePPTextStyle),
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
              Text(seguridadDatosPersonalesTituloPP, style: titlePPTextStyle),
              spaceTitleBody,
              Text(seguridadDatosPersonalesCuerpoPP,
                  style: bodyPPTextStyle, textAlign: TextAlign.justify),
              spaceColumn,
              Text(derechosEleccionesUsuariosTituloPP, style: titlePPTextStyle),
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
              Text(informacionContactoCuerpoPP,
                  style: bodyPPTextStyle, textAlign: TextAlign.justify),
              spaceColumn,
              Text(ultimaActualizacionPP, style: titlePPTextStyle),
              spaceColumn,
            ],
          ),
        ),
      ),
    );
  }
}
