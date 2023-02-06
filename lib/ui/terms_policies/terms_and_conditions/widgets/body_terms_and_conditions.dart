import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/widgets/bold_text_rich.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:dinamica_landing_page/ui/widgets/link_url_text_rich.dart';
import 'package:dinamica_landing_page/ui/widgets/return_button.dart';
import 'package:flutter/material.dart';

class BodyTermsAndConditions extends StatelessWidget {
  const BodyTermsAndConditions({super.key});

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
                      child: Text(tituloTC,
                          style: titleTACTextStyle.copyWith(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center)),
                  spaceTitleBody,
                  Text(cuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 1- Registro de cuentas
                  Text(registroCuentaTituloTC, style: titleTACTextStyle),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: aRegistroCuentaTituloCuerpoTC,
                      normalFont: aRegistroCuentaCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: bRegistroCuentaTituloCuerpoTC,
                      normalFont: bRegistroCuentaCuerpoTC),
                  spaceColumn,
                  // 2- Procesamiento de pagos. Mandato
                  Text(procesamientoPagoMandatoTituloTC,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: aProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: aProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: bProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: bProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: cProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: cProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: dProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: dProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: eProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: eProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: fProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: fProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: gProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: gProcesamientoPagoMandatoCuerpoTC),
                  spaceColumn,
                  // 3- Entrega, aplicación y retiro de los fondos
                  Text(entregaAplicacionYRetiroDeLosFondosTituloTC,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(entregaFondosUsuarioTituloTC,
                      style: bodyTACTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(entregaFondosUsuarioCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(liquidacionAcreditacionFondosTituloTC,
                      style: bodyTACTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(liquidacionAcreditacionFondosCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(instruccionesRespectoFondosTituloTC,
                      style: bodyTACTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(instruccionesRespectoFondosCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(retirosTituloTC,
                      style: bodyTACTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(retirosCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(limitesTituloTC,
                      style: bodyTACTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(limitesCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(resolucionReclamosTituloTC,
                      style: bodyTACTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(resolucionReclamosCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(reversionesTituloTC,
                      style: bodyTACTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(reversionesCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(responsabilidadFondosTituloTC,
                      style: bodyTACTextStyle.copyWith(
                          fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(responsabilidadFondosCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 4- Carrito de compras y Botón de pago
                  Text(carritoComprasBotonPagoTituloTC,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(carritoComprasBotonPagoCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: aCarritoComprasBotonPagoTituloCuerpoTC,
                      normalFont: aCarritoComprasBotonPagoCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: bCarritoComprasBotonPagoTituloCuerpoTC,
                      normalFont: bCarritoComprasBotonPagoCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: cCarritoComprasBotonPagoTituloCuerpoTC,
                      normalFont: cCarritoComprasBotonPagoCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: dCarritoComprasBotonPagoTituloCuerpoTC,
                      normalFont: dCarritoComprasBotonPagoCuerpoTC),
                  Text(dCarritoComprasBotonPagoCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 5- Política de correcto uso de marcas en el sitio Web del Vendedor
                  Text(politicaCorrectoUsoMarcaTituloTC,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: aPoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: aPoliticaCorrectoUsoMarcaCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: bPoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: bPoliticaCorrectoUsoMarcaCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: cPoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: cPoliticaCorrectoUsoMarcaCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: dPoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: dPoliticaCorrectoUsoMarcaCuerpoTC),
                  Text(dPoliticaCorrectoUsoMarcaCuerpoTC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: ePoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: ePoliticaCorrectoUsoMarcaCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: fPoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: fPoliticaCorrectoUsoMarcaCuerpoTC),
                  spaceColumn,
                  // 6- Condiciones generales de contratación
                  Text(condicionesContratacionTituloTC,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: aCondicionesContratacionTituloCuerpoTC,
                      normalFont: aCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: bCondicionesContratacionTituloCuerpoTC,
                      normalFont: bCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: cCondicionesContratacionTituloCuerpoTC,
                      normalFont: cCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: dCondicionesContratacionTituloCuerpoTC,
                      normalFont: dCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: eCondicionesContratacionTituloCuerpoTC,
                      normalFont: eCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: fCondicionesContratacionTituloCuerpoTC,
                      normalFont: fCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: gCondicionesContratacionTituloCuerpoTC,
                      normalFont: gCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: hCondicionesContratacionTituloCuerpoTC,
                      normalFont: hCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: iCondicionesContratacionTituloCuerpoTC,
                      normalFont: iCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: jCondicionesContratacionTituloCuerpoTC,
                      normalFont: jCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: kCondicionesContratacionTituloCuerpoTC,
                      normalFont: kCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: lCondicionesContratacionTituloCuerpoTC,
                      normalFont: lCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: mCondicionesContratacionTituloCuerpoTC,
                      normalFont: mCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: nCondicionesContratacionTituloCuerpoTC,
                      normalFont: nCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: oCondicionesContratacionTituloCuerpoTC,
                      normalFont: oCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: pCondicionesContratacionTituloCuerpoTC,
                      normalFont: pCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: qCondicionesContratacionTituloCuerpoTC,
                      normalFont: qCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  //Hipervinculos
                  const LinkUrlTextRich(
                      leftText: "             • ",
                      name: "Política de Privacidad de DINÁMICA",
                      url:
                          "https://pay.dinamicaonline.com.ar/politicas-de-privacidad"),
                  spaceTitleBody,
                  const LinkUrlTextRich(
                      leftText: "             • ",
                      name:
                          "DINÁMICA Crédito – Condiciones Generales del Otorgamiento de Préstamos",
                      url:
                          "https://pay.dinamicaonline.com.ar/condiciones-de-otorgamiento-de-prestamos"),
                  spaceTitleBody,
                  const LinkUrlTextRich(
                      leftText: "             • ",
                      name: "Términos y Condiciones de DINÁMICA Cobros",
                      url:
                          "https://pay.dinamicaonline.com.ar/terminos-y-condiciones-de-uso-de-dinamica-cobros"),
                  spaceTitleBody,
                  const LinkUrlTextRich(
                      leftText: "             • ",
                      name: "Términos y Condiciones de Adelanto de Fondos",
                      url:
                          "https://pay.dinamicaonline.com.ar/terminos-y-condiciones-de-uso-de-adelanto-de-fondos"),
                  spaceTitleBody,
                  const LinkUrlTextRich(
                      leftText: "             • ",
                      name: "Términos y Condiciones de Uso Código QR",
                      url:
                          "https://pay.dinamicaonline.com.ar/terminos-y-condiciones-de-uso-de-codigo-qr"),
                  spaceTitleBody,
                  //
                  BoldTextRich(
                      boldFont: rCondicionesContratacionTituloCuerpoTC,
                      normalFont: rCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  BoldTextRich(
                      boldFont: sCondicionesContratacionTituloCuerpoTC,
                      normalFont: sCondicionesContratacionCuerpoTC),
                  spaceColumn,
                  // Ultima actualización
                  Text(ultimaActualizacionTC, style: bodyTACTextStyle),
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
