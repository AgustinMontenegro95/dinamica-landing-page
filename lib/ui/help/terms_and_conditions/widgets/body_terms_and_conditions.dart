import 'package:dinamica_landing_page/constants/colors.dart';
import 'package:dinamica_landing_page/ui/help/terms_and_conditions/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/help/terms_and_conditions/widgets/link_text_rich_tac.dart';
import 'package:dinamica_landing_page/ui/help/terms_and_conditions/widgets/text_rich_tac.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:flutter/material.dart';

class BodyTermsAndConditions extends StatelessWidget {
  const BodyTermsAndConditions({super.key});

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
                      child: Text(tituloTC,
                          style: titleTCTextStyle.copyWith(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center)),
                  spaceTitleBody,
                  Text(cuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 1- Registro de cuentas
                  Text(registroCuentaTituloTC, style: titleTCTextStyle),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: aRegistroCuentaTituloCuerpoTC,
                      normalFont: aRegistroCuentaCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: bRegistroCuentaTituloCuerpoTC,
                      normalFont: bRegistroCuentaCuerpoTC),
                  spaceColumn,
                  // 2- Procesamiento de pagos. Mandato
                  Text(procesamientoPagoMandatoTituloTC,
                      style: titleTCTextStyle),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: aProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: aProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: bProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: bProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: cProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: cProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: dProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: dProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: eProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: eProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: fProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: fProcesamientoPagoMandatoCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: gProcesamientoPagoMandatoTituloCuerpoTC,
                      normalFont: gProcesamientoPagoMandatoCuerpoTC),
                  spaceColumn,
                  // 3- Entrega, aplicación y retiro de los fondos
                  Text(entregaAplicacionYRetiroDeLosFondosTituloTC,
                      style: titleTCTextStyle),
                  spaceTitleBody,
                  Text(entregaFondosUsuarioTituloTC,
                      style:
                          bodyTCTextStyle.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(entregaFondosUsuarioCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(liquidacionAcreditacionFondosTituloTC,
                      style:
                          bodyTCTextStyle.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(liquidacionAcreditacionFondosCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(instruccionesRespectoFondosTituloTC,
                      style:
                          bodyTCTextStyle.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(instruccionesRespectoFondosCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(retirosTituloTC,
                      style:
                          bodyTCTextStyle.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(retirosCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(limitesTituloTC,
                      style:
                          bodyTCTextStyle.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(limitesCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(resolucionReclamosTituloTC,
                      style:
                          bodyTCTextStyle.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(resolucionReclamosCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(reversionesTituloTC,
                      style:
                          bodyTCTextStyle.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(reversionesCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(responsabilidadFondosTituloTC,
                      style:
                          bodyTCTextStyle.copyWith(fontWeight: FontWeight.bold),
                      textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Text(responsabilidadFondosCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 4- Carrito de compras y Botón de pago
                  Text(carritoComprasBotonPagoTituloTC,
                      style: titleTCTextStyle),
                  spaceTitleBody,
                  Text(carritoComprasBotonPagoCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: aCarritoComprasBotonPagoTituloCuerpoTC,
                      normalFont: aCarritoComprasBotonPagoCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: bCarritoComprasBotonPagoTituloCuerpoTC,
                      normalFont: bCarritoComprasBotonPagoCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: cCarritoComprasBotonPagoTituloCuerpoTC,
                      normalFont: cCarritoComprasBotonPagoCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: dCarritoComprasBotonPagoTituloCuerpoTC,
                      normalFont: dCarritoComprasBotonPagoCuerpoTC),
                  Text(dCarritoComprasBotonPagoCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // 5- Política de correcto uso de marcas en el sitio Web del Vendedor
                  Text(politicaCorrectoUsoMarcaTituloTC,
                      style: titleTCTextStyle),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: aPoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: aPoliticaCorrectoUsoMarcaCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: bPoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: bPoliticaCorrectoUsoMarcaCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: cPoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: cPoliticaCorrectoUsoMarcaCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: dPoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: dPoliticaCorrectoUsoMarcaCuerpoTC),
                  Text(dPoliticaCorrectoUsoMarcaCuerpoTC,
                      style: bodyTCTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: ePoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: ePoliticaCorrectoUsoMarcaCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: fPoliticaCorrectoUsoMarcaTituloCuerpoTC,
                      normalFont: fPoliticaCorrectoUsoMarcaCuerpoTC),
                  spaceColumn,
                  // 6- Condiciones generales de contratación
                  Text(condicionesContratacionTituloTC,
                      style: titleTCTextStyle),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: aCondicionesContratacionTituloCuerpoTC,
                      normalFont: aCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: bCondicionesContratacionTituloCuerpoTC,
                      normalFont: bCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: cCondicionesContratacionTituloCuerpoTC,
                      normalFont: cCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: dCondicionesContratacionTituloCuerpoTC,
                      normalFont: dCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: eCondicionesContratacionTituloCuerpoTC,
                      normalFont: eCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: fCondicionesContratacionTituloCuerpoTC,
                      normalFont: fCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: gCondicionesContratacionTituloCuerpoTC,
                      normalFont: gCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: hCondicionesContratacionTituloCuerpoTC,
                      normalFont: hCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: iCondicionesContratacionTituloCuerpoTC,
                      normalFont: iCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: jCondicionesContratacionTituloCuerpoTC,
                      normalFont: jCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: kCondicionesContratacionTituloCuerpoTC,
                      normalFont: kCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: lCondicionesContratacionTituloCuerpoTC,
                      normalFont: lCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: mCondicionesContratacionTituloCuerpoTC,
                      normalFont: mCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: nCondicionesContratacionTituloCuerpoTC,
                      normalFont: nCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: oCondicionesContratacionTituloCuerpoTC,
                      normalFont: oCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: pCondicionesContratacionTituloCuerpoTC,
                      normalFont: pCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: qCondicionesContratacionTituloCuerpoTC,
                      normalFont: qCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  //Hipervinculos
                  const LinkTextRichTAC(
                      title: "Política de Privacidad de DINÁMICA",
                      route: "/politicas-de-privacidad"),
                  spaceTitleBody,
                  const LinkTextRichTAC(
                      title: "Comisiones y Cargos del Servicio",
                      route: "/politicas-de-privacidad"),
                  spaceTitleBody,
                  const LinkTextRichTAC(
                      title: "Términos y Condiciones de Inversiones",
                      route: "/politicas-de-privacidad"),
                  spaceTitleBody,
                  const LinkTextRichTAC(
                      title: "Términos y Condiciones de DINÁMICA Cobros",
                      route: "/politicas-de-privacidad"),
                  spaceTitleBody,
                  const LinkTextRichTAC(
                      title: "Términos y Condiciones de Uso Código QR",
                      route: "/politicas-de-privacidad"),
                  spaceTitleBody,
                  const LinkTextRichTAC(
                      title:
                          "Términos y Condiciones del Programa de  Descuentos y Bonificaciones",
                      route: "/politicas-de-privacidad"),
                  spaceTitleBody,
                  //
                  TextRichTAC(
                      boldFont: rCondicionesContratacionTituloCuerpoTC,
                      normalFont: rCondicionesContratacionCuerpoTC),
                  spaceTitleBody,
                  TextRichTAC(
                      boldFont: sCondicionesContratacionTituloCuerpoTC,
                      normalFont: sCondicionesContratacionCuerpoTC),
                  spaceColumn,
                  // Ultima actualización
                  Text(ultimaActualizacionTC, style: bodyTCTextStyle),
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
