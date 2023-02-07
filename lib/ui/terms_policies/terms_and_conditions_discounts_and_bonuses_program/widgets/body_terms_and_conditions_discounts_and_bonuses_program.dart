import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions_discounts_and_bonuses_program/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions_funds_advances/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:dinamica_landing_page/ui/widgets/return_button.dart';
import 'package:flutter/material.dart';

class BodyTermsAndConditionsDiscountsAndBonusesProgram extends StatelessWidget {
  const BodyTermsAndConditionsDiscountsAndBonusesProgram({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle bodyTCFATextStyle = const TextStyle(fontSize: 18);
    TextStyle titleTCFATextStyle = const TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
    );

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
                  const ReturnButton(),
                  Center(
                      child: Text(tituloTCDBP,
                          style: titleTCFATextStyle.copyWith(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center)),
                  spaceTitleBody,
                  // 1 - Condiciones Particulares
                  Text(condicionesParticularesTituloTCDBP,
                      style: titleTCFATextStyle),
                  spaceTitleBody,
                  Text(condicionesParticularesCuerpoTCDBP,
                      style: bodyTCFATextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 2 - Programa de Gestión de Contactos
                  Text(gestionContactosTituloTCDBP, style: titleTCFATextStyle),
                  spaceTitleBody,
                  Text(gestionContactosCuerpoTCDBP,
                      style: bodyTCFATextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 3 - Programa de Descuentos y Bonificaciones para Usuario vendedor
                  Text(descuentosBonificacionesTituloTCDBP,
                      style: titleTCFATextStyle),
                  spaceTitleBody,
                  Text(descuentosBonificacionesCuerpoTCDBP,
                      style: bodyTCFATextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 4 - Indemnidad
                  Text(indemnidadTituloTCDBP, style: titleTCFATextStyle),
                  spaceTitleBody,
                  Text(indemnidadCuerpoTCDBP,
                      style: bodyTCFATextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 5 - Exclusión del Programa
                  Text(exclusionTituloTCDBP, style: titleTCFATextStyle),
                  spaceTitleBody,
                  Text(exclusionCuerpoTCDBP,
                      style: bodyTCFATextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 6 - Modificaciones
                  Text(modificacionesTituloTCDBP, style: titleTCFATextStyle),
                  spaceTitleBody,
                  Text(modificacionesCuerpoTCDBP,
                      style: bodyTCFATextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // Ultima actualización
                  Text(ultimaActualizacionTCDBP, style: bodyTCFATextStyle),
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
