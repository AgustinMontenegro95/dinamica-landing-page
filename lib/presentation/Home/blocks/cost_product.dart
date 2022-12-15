import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sigest_landing_page/constants/components.dart';
import 'package:sigest_landing_page/presentation/widgets/divider.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';

class CostProduct extends StatelessWidget {
  const CostProduct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          const Text('Empieza ahora', style: headlineTextStyle),
          Text(
            'Planes de Precios',
            style: headlineTextStyle.copyWith(
                fontSize: 65, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisSize: MainAxisSize.min,
            rowPadding:
                const EdgeInsets.symmetric(horizontal: 80, vertical: 80),
            columnPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            columnSpacing: 50,
            rowSpacing: 50,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 1,
                rowFit: FlexFit.tight,
                child: Container(
                  margin: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          width: double.maxFinite,
                          color: Colors.blueAccent,
                          child: Text(
                            'PLAN BASICO',
                            textAlign: TextAlign.center,
                            style:
                                headlineTextStyle.copyWith(color: Colors.white),
                          ),
                        ),
                        Text(
                          '\$ 499.99/mes',
                          style: bodyTextStyle.copyWith(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Soporte para 1000 productos',
                            style: bodyTextStyle),
                        const DividerCustom(),
                        const Text('Aplicacion web y movil',
                            style: bodyTextStyle),
                        const DividerCustom(),
                        const Text('Soporte 24/7', style: bodyTextStyle),
                        Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                launchWhatsApp(
                                    'Hola, estuve viendo Sigest y quiero obtener el servicio de Plan Basico.');
                              },
                              style: ButtonStyle(
                                backgroundColor:
                                    MaterialStateProperty.all<Color>(
                                        primaryLight),
                              ),
                              child: Text(
                                "EMPIEZA LA PRUEBA GRATUITA",
                                style: buttonTextStyle.copyWith(
                                    fontSize: 18, color: primaryDark),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ]),
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 1,
                rowFit: FlexFit.tight,
                child: Container(
                  margin: const EdgeInsets.all(25.0),
                  decoration: BoxDecoration(
                    color: Colors.grey.shade100,
                  ),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Banner(
                          message: "Popular",
                          location: BannerLocation.topStart,
                          color: Colors.red,
                          child: Container(
                            padding: const EdgeInsets.all(10),
                            width: double.maxFinite,
                            color: const Color.fromARGB(255, 16, 67, 155),
                            child: Text(
                              'PLAN PRO',
                              textAlign: TextAlign.center,
                              style: headlineTextStyle.copyWith(
                                  color: Colors.white),
                            ),
                          ),
                        ),
                        Text(
                          '\$ 1499.95/mes',
                          style: bodyTextStyle.copyWith(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        const Text('Soporte para 3500 productos',
                            style: bodyTextStyle),
                        const DividerCustom(),
                        const Text('Aplicacion web y mobil',
                            style: bodyTextStyle),
                        const DividerCustom(),
                        const Text('Estadisticas de productos',
                            style: bodyTextStyle),
                        const DividerCustom(),
                        const Text('Aplicacion de Escritorio personalisada',
                            style: bodyTextStyle),
                        const DividerCustom(),
                        const Text('Soporte 24/7'),
                        Padding(
                          padding: const EdgeInsets.only(top: 32),
                          child: Center(
                            child: TextButton(
                              onPressed: () {
                                launchWhatsApp(
                                    'Hola, estuve viendo Sigest y quiero obtener el servicio de Plan Pro');
                              },
                              style: buttonStylePro,
                              child: Text(
                                "ADQUIRIR",
                                style: buttonTextStyle.copyWith(fontSize: 18),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                      ]),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  launchWhatsApp(String text) async {
    final link = WhatsAppUnilink(
      phoneNumber: '+54 9 385 411 7816',
      text: text,
    );

    await launchUrlString('$link');
  }
}
