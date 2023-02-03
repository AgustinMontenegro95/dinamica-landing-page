import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions_funds_advances/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:dinamica_landing_page/ui/widgets/return_button.dart';
import 'package:flutter/material.dart';

class BodyTermsAndConditionsFundsAdvances extends StatelessWidget {
  const BodyTermsAndConditionsFundsAdvances({super.key});

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
                      child: Text(tituloTCFA,
                          style: titleTCFATextStyle.copyWith(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center)),
                  spaceTitleBody,
                  // 1- Adelanto de Fondos
                  Text(adelantoFondosTituloTCPFA, style: titleTCFATextStyle),
                  spaceTitleBody,
                  Text(adelantoFondosCuerpoTCPFA,
                      style: bodyTCFATextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 2- Solicitud de Adelanto de Fondos
                  Text(solicitudAdelantoFondosTituloTCPFA,
                      style: titleTCFATextStyle),
                  spaceTitleBody,
                  Text(solicitudAdelantoFondosCuerpoTCPFA,
                      style: bodyTCFATextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 3- Costo
                  Text(costoTituloTCPFA, style: titleTCFATextStyle),
                  spaceTitleBody,
                  Text(costoCuerpoTCPFA,
                      style: bodyTCFATextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 4- Caso de cancelaciones, anulaciones, reversiones y contra cargos
                  Text(casoTituloTCPFA, style: titleTCFATextStyle),
                  spaceTitleBody,
                  Text(casoCuerpoTCPFA,
                      style: bodyTCFATextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // Ultima actualización
                  Text(ultimaActualizacionTCPFA, style: bodyTCFATextStyle),
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
