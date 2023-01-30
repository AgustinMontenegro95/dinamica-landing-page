import 'package:dinamica_landing_page/ui/terms_policies/widgets/listtile_body_tp.dart';
import 'package:dinamica_landing_page/ui/widgets/footer.dart';
import 'package:flutter/material.dart';

class BodyTermsPolicies extends StatelessWidget {
  const BodyTermsPolicies({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.8,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SizedBox(height: 100),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Políticas de DINÁMICA",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    ListtileBodyTP(
                        title: "Políticas de privacidad",
                        route: "/politicas-de-privacidad"),
                    ListtileBodyTP(
                        title: "Términos y condiciones de uso",
                        route: "/terminos-y-condiciones-de-uso"),
                    ListtileBodyTP(
                        title:
                            "DINÁMICA Crédito - Condiciones Generales del otorgamiento de Préstamos",
                        route: "/condiciones-de-otorgamiento-de-prestamos"),
                  ],
                ),
              ),
              const Footer(),
            ],
          ),
        ),
      ),
    );
  }
}
