import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions_use_qr_code/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:dinamica_landing_page/ui/widgets/return_button.dart';
import 'package:flutter/material.dart';

class BodyTermsAndConditionsUseQrCode extends StatelessWidget {
  const BodyTermsAndConditionsUseQrCode({super.key});

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
                      child: Text(tituloTCUCQ,
                          style: titleTACTextStyle.copyWith(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center)),
                  spaceTitleBody,
                  Text(cuerpoTCUQC,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // I- Servicio de Procesamiento de Pagos mediante Lectura de Código QR
                  Text(servicioPagoTituloTCPFA, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(servicioPagoCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // II- Generación de Código QR
                  Text(generacionQrTituloTCPFA, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(generacionQrCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // III- Operaciones de cobro y pago con Código QR:
                  Text(operacionesCobroPagoTituloTCPFA,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(operacionesCobroPagoCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // IV- Retiro de dinero en efectivo mediante Lectura de Código QR
                  Text(retiroDineroTituloTCPFA, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(retiroDineroCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // V- Tarifas
                  Text(tarifasTituloTCPFA, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(tarifasCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // VI- Comunicación del Código QR
                  Text(comunicacionQrTituloTCPFA, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(comunicacionQrCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // VII- Política de uso correcto de marcas y propiedad intelectual
                  Text(politicaMarcasTituloTCPFA, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(politicaMarcasCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // VIII- Responsabilidad del Usuario
                  Text(responsabilidadUsuarioTituloTCPFA,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(responsabilidadUsuarioCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // IX- Declaraciones de DINÁMICA
                  Text(declaracionesTituloTCPFA, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(declaracionesCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // X- Modificación de las Condiciones de Uso del Código QR.
                  Text(modificacionCondicionesTituloTCPFA,
                      style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(modificacionCondicionesCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // XI- Términos en mayúsculas
                  Text(terminosMayusculasTituloTCPFA, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(terminosMayusculasCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // // XII- Jurisdicción y ley aplicable
                  Text(jurisdiccionLeyTituloTCPFA, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(jurisdiccionLeyCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // XIII- DINÁMICA como proveedor de servicios
                  Text(proveedorServiciosTituloTCPFA, style: titleTACTextStyle),
                  spaceTitleBody,
                  Text(proveedorServiciosCuerpoTCPFA,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  // Ultima actualización
                  Text(ultimaActualizacionTCPFA, style: bodyTACTextStyle),
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
