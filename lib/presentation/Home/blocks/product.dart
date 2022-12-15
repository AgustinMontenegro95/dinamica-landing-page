import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sigest_landing_page/constants/components.dart';

class Product extends StatelessWidget {
  const Product({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: Column(
        children: [
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisSize: MainAxisSize.min,
            rowPadding:
                const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            columnPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            columnSpacing: 50,
            rowSpacing: 50,
            children: [
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: Image.asset(
                    'assets/images/capturaWeb.png',
                    height: 450,
                    fit: BoxFit.cover,
                  )),
              ResponsiveRowColumnItem(
                  rowFlex: 2,
                  rowFit: FlexFit.tight,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: Text('Sigest Web',
                            style: headlineTextStyle,
                            textAlign: TextAlign.center),
                      ),
                      Text(
                          'Nuestra aplicacion esta disponible por la web. Podra acceder a ella por cualquier dispositivo conectado a la red global.',
                          style:
                              headlineSecondaryTextStyle.copyWith(fontSize: 16),
                          textAlign: TextAlign.center),
                    ],
                  )),
            ],
          ),
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisSize: MainAxisSize.min,
            rowPadding:
                const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            columnPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            columnSpacing: 50,
            rowSpacing: 50,
            children: [
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: Text('Sigest para moviles',
                            style: headlineTextStyle,
                            textAlign: TextAlign.center),
                      ),
                      Text(
                          'Usa nuestra aplicacion movil como lector de códigos de barras para aumentar la velocidad del proceso de facturación,. Busca  informacion de tus productos sin tener que entrar en la web.',
                          style:
                              headlineSecondaryTextStyle.copyWith(fontSize: 16),
                          textAlign: TextAlign.center),
                    ],
                  )),
              ResponsiveRowColumnItem(
                  rowFlex: 2,
                  rowFit: FlexFit.tight,
                  child: Image.asset(
                    'assets/images/capturaMovil.png',
                    height: 450,
                    fit: BoxFit.cover,
                  )),
            ],
          ),
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowCrossAxisAlignment: CrossAxisAlignment.center,
            columnCrossAxisAlignment: CrossAxisAlignment.center,
            columnMainAxisSize: MainAxisSize.min,
            rowPadding:
                const EdgeInsets.symmetric(horizontal: 80, vertical: 20),
            columnPadding:
                const EdgeInsets.symmetric(horizontal: 25, vertical: 50),
            columnSpacing: 50,
            rowSpacing: 50,
            children: [
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: Image.asset(
                    'assets/images/capturaWindows.png',
                    height: 450,
                    fit: BoxFit.cover,
                  )),
              ResponsiveRowColumnItem(
                  rowFlex: 2,
                  rowFit: FlexFit.tight,
                  child: Column(
                    children: [
                      const Padding(
                        padding: EdgeInsets.only(bottom: 16),
                        child: Text('Sigest para Windows',
                            style: headlineTextStyle,
                            textAlign: TextAlign.center),
                      ),
                      Text(
                          'Nuestro sistema de gestión para Windows permite administrar de cerca tu inventario, y la información de tu stock sin tener que inspeccionar personalmente tu depósito de mercadería. Sigest  reduce al máximo el tiempo invertido en gestionar inventarios, y minimiza el esfuerzo en la administración y actualización de varias listas de precios',
                          style:
                              headlineSecondaryTextStyle.copyWith(fontSize: 16),
                          textAlign: TextAlign.center),
                    ],
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
