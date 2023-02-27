import 'package:flutter/material.dart';
import 'package:dinamica_landing_page/ui/widgets/link_url_text_rich.dart';
import 'package:dinamica_landing_page/ui/widgets/redirect_listtile.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';

class BodyCosts extends StatelessWidget {
  const BodyCosts({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: MediaQuery.of(context).size.height * 0.9,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 20.0),
                    child: Text(
                      "Costos de DINÁMICA",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  RedirectListtile(
                      title: "Ingresar dinero", route: "/ingresar-dinero"),
                  RedirectListtile(
                      title: "Retiro efectivo", route: "/retiro-efectivo"),
                  RedirectListtile(
                      title: "Transferir dinero", route: "/transferir-dinero"),
                  Padding(
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
            const Footer(costs: false),
          ],
        ),
      ),
    );
  }
}
