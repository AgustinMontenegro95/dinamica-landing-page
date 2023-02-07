import 'package:dinamica_landing_page/ui/terms_policies/widgets/listtile_body_tp.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:dinamica_landing_page/ui/widgets/link_url_text_rich.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class BodyTermsPolicies extends StatelessWidget {
  const BodyTermsPolicies({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      height: ResponsiveWrapper.of(context)
                              .isSmallerThan("MOBILE_LARGE")
                          ? 50
                          : 70),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Políticas de DINÁMICA",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  const ListtileBodyTP(
                      title: "Políticas de privacidad",
                      route: "/politicas-de-privacidad"),
                  const ListtileBodyTP(
                      title: "Términos y condiciones de uso",
                      route: "/terminos-y-condiciones-de-uso"),
                  const ListtileBodyTP(
                      title:
                          "Condiciones Generales del otorgamiento de Préstamos",
                      route: "/condiciones-de-otorgamiento-de-prestamos"),
                  const ListtileBodyTP(
                      title: "Términos y Condiciones de DINÁMICA Cobros",
                      route:
                          "/terminos-y-condiciones-de-uso-de-dinamica-cobros"),
                  const ListtileBodyTP(
                      title: "Términos y Condiciones de Adelanto de Fondos",
                      route:
                          "/terminos-y-condiciones-de-uso-de-adelanto-de-fondos"),
                  const ListtileBodyTP(
                      title: "Términos y Condiciones de Uso de Código QR",
                      route: "/terminos-y-condiciones-de-uso-de-codigo-qr"),
                  const ListtileBodyTP(
                      title:
                          "Términos y Condiciones del Programa de Descuentos y Bonificaciones",
                      route:
                          "/terminos-y-condiciones-del-programa-de-descuentos-y-bonificaciones"),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 30),
                    child: LinkUrlTextRich(
                        leftText:
                            "¿Encontraste lo que buscabas? Si necesitas ayuda ",
                        url: "https://pay.dinamicaonline.com.ar/contacto",
                        name: "ponete en contacto con nosotros",
                        rightText: "."),
                  ),
                ],
              ),
            ),
            const Footer(termsAndConditions: false),
          ],
        ),
      ),
    );
  }
}
