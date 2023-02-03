import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/terms_policies/conditions_grating_loans/widgets/constant_data.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:dinamica_landing_page/ui/widgets/link_route_text_rich.dart';
import 'package:dinamica_landing_page/ui/widgets/link_url_text_rich.dart';
import 'package:dinamica_landing_page/ui/widgets/return_button.dart';
import 'package:flutter/material.dart';

class BodyConditionsGratingLoans extends StatelessWidget {
  const BodyConditionsGratingLoans({super.key});

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
                      child: Text(tituloCGL,
                          style: bodyTACTextStyle.copyWith(
                            decoration: TextDecoration.underline,
                            fontSize: 25,
                          ),
                          textAlign: TextAlign.center)),
                  spaceTitleBody,
                  LinkUrlTextRich(
                    leftText: a0CuerpoCGL,
                    url: "https://midinamica.com.ar/",
                    name: a1CuerpoCGL,
                    rightText: a2CuerpoCGL,
                  ),
                  spaceTitleBody,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(bCuerpoCGL,
                        style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  ),
                  spaceTitleBody,
                  Text(cCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(ofertaAceptacionPrestamoTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.center),
                  spaceTitleBody,
                  Text(aOfertaAceptacionPrestamoCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Text(bOfertaAceptacionPrestamoCuerpoCGL,
                        style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  ),
                  spaceTitleBody,
                  Text(cOfertaAceptacionPrestamoCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(prestamoTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.start),
                  spaceTitleBody,
                  Text(prestamoCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(desembolsoPrestamoTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.start),
                  spaceTitleBody,
                  Text(desembolsoPrestamoCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(interesesCompensatoriosTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.start),
                  spaceTitleBody,
                  Text(interesesCompensatoriosCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(reembolsoTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.start),
                  spaceTitleBody,
                  Text(reembolsoCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(cancelacionAnticipadaTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.start),
                  spaceTitleBody,
                  Text(cancelacionAnticipadaCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(vigenciaTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.start),
                  spaceTitleBody,
                  Text(vigenciaCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(moraTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.start),
                  spaceTitleBody,
                  Text(moraCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(resolucionEventosIncumplimientosTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.start),
                  spaceTitleBody,
                  Text(aResolucionEventosIncumplimientosCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceTitleBody,
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(bResolucionEventosIncumplimientosCuerpoCGL,
                        style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  ),
                  spaceTitleBody,
                  Text(cResolucionEventosIncumplimientosCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(responsabilidadTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.start),
                  spaceTitleBody,
                  Text(responsabilidadCuerpoCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
                  spaceColumn,
                  Text(disposicionesGeneralesTituloCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.start),
                  spaceTitleBody,
                  LinkRouteTextRich(
                    leftText: aDisposicionesGeneralesCuerpoCGL,
                    link: bDisposicionesGeneralesCuerpoCGL,
                    route: '/terminos-y-condiciones-de-uso',
                    rightText: cDisposicionesGeneralesCuerpoCGL,
                  ),
                  spaceColumn,
                  Text(ultimaActualizacionCGL,
                      style: bodyTACTextStyle, textAlign: TextAlign.justify),
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
