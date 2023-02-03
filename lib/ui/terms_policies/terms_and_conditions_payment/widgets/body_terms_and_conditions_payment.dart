import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions_payment/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:dinamica_landing_page/ui/widgets/link_email_text_rich.dart';
import 'package:dinamica_landing_page/ui/widgets/link_url_text_rich.dart';
import 'package:dinamica_landing_page/ui/widgets/return_button.dart';
import 'package:dinamica_landing_page/ui/widgets/underline_text_rich.dart';
import 'package:flutter/material.dart';

class BodyTermsAndConditionsPayment extends StatelessWidget {
  const BodyTermsAndConditionsPayment({super.key});

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
                      child: Text(tituloTCP,
                          style: titleTACTextStyle.copyWith(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center)),
                  spaceTitleBody,
                  Text(cuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // Definiciones
                  Text(definicionesTituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  UnderlineTextRich(
                      underlineText: appDinamicaTituloTCP,
                      normalText: appDinamicaCuerpoTCP),
                  spaceTitleBody,
                  UnderlineTextRich(
                      underlineText: contrasenaTituloTCP,
                      normalText: contrasenaCuerpoTCP),
                  spaceTitleBody,
                  UnderlineTextRich(
                      underlineText: clienteCompradorTituloTCP,
                      normalText: clienteCompradorCuerpoTCP),
                  spaceTitleBody,
                  UnderlineTextRich(
                      underlineText: cuentaTituloTCP,
                      normalText: cuentaCuerpoTCP),
                  spaceTitleBody,
                  UnderlineTextRich(
                      underlineText: linkPagoTituloTCP,
                      normalText: linkPagoCuerpoTCP),
                  spaceTitleBody,
                  UnderlineTextRich(
                      underlineText: mediosPagoTituloTCP,
                      normalText: mediosPagoCuerpoTCP),
                  spaceTitleBody,
                  UnderlineTextRich(
                      underlineText: servicioCobroTituloTCP,
                      normalText: servicioCobroCuerpoTCP),
                  spaceTitleBody,
                  UnderlineTextRich(
                      underlineText: usuarioTituloTCP,
                      normalText: usuarioCuerpoTCP),
                  spaceColumn,
                  // CLÁUSULA 1. ALTA DEL SERVICIO.
                  Text(clausula1TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula1CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 2. UTILIZACIÓN DEL SERVICIO DINÁMICA COBROS.
                  Text(clausula2TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula2CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 3. OPERATIVIDAD DEL SERVICIO.
                  Text(clausula3TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula3CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 4. COSTO DE LOS SERVICIOS.
                  Text(clausula4TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula4CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 5. ACREDITACIÓN DE FONDOS.
                  Text(clausula5TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula5CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 6. COMPROBANTES DE LA TRANSACCIÓN.
                  Text(clausula6TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula6CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 7. RUBROS PROHIBIDOS.
                  Text(clausula7TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula7CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 8. CONTRA CARGOS Y/O ANULACIONES.
                  Text(clausula8TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula8CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 9. DEVOLUCIONES.
                  Text(clausula9TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula9CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 10. RESPONSABILIDAD DEL USUARIO.
                  Text(clausula10TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula10CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 12. RESPONSABILIDAD DEL USUARIO.
                  Text(clausula12TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula12CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 13. INCUMPLIMIENTOS DEL USUARIO.
                  Text(clausula13TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula13CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 14. MEDIDAS EN CASO DE INCUMPLIMIENTO.
                  Text(clausula14TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula14CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 15. AUTONOMÍA E INDEPENDENCIA ENTRE LAS PARTES.
                  Text(clausula15TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula15CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 16. PRIVACIDAD Y PROTECCIÓN DE LOS DATOS.
                  Text(clausula16TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  LinkEmailTextRich(
                    leftText: aClausula16CuerpoTCP,
                    email: bClausula16CuerpoTCP,
                    rightText: cClausula16CuerpoTCP,
                  ),
                  spaceColumn,
                  // CLÁUSULA 17. CONFIDENCIALIDAD.
                  Text(clausula17TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula17CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 18. PROPIEDAD INTELECTUAL E INDUSTRIAL.
                  Text(clausula18TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula18CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 19. MODIFICACIÓN DE LOS SERVICIOS.
                  Text(clausula19TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula19CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 20. MODIFICACIÓN DE LOS TÉRMINOS Y CONDICIONES.
                  Text(clausula20TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula20CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 21. CESIÓN O USO COMERCIAL NO AUTORIZADO.
                  Text(clausula21TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula21CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 22. VIGENCIA. RESCISIÓN DEL SERVICIO.
                  Text(clausula22TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula22CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // CLÁUSULA 23. ANEXOS. TOTALIDAD DEL ACUERDO.
                  Text(clausula23TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  LinkUrlTextRich(
                    leftText: aClausula23CuerpoTCP,
                    url: "https://midinamica.com.ar/",
                    name: bClausula23CuerpoTCP,
                    rightText: cClausula23CuerpoTCP,
                  ),
                  spaceColumn,
                  // CLÁUSULA 24. COMUNICACIONES.
                  Text(clausula24TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  LinkEmailTextRich(
                    leftText: aClausula24CuerpoTCP,
                    email: bClausula24CuerpoTCP,
                    rightText: cClausula24CuerpoTCP,
                  ),
                  spaceColumn,
                  // CLÁUSULA 25. DOMICILIO. LEY APLICABLE. COMPETENCIA.
                  Text(clausula25TituloTCP, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(clausula25CuerpoTCP,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // Ultima actualización
                  Text(ultimaActualizacionTCP, style: bodyTACTextStyle),
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
