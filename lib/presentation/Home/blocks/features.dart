import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sigest_landing_page/presentation/widgets/row_column_item.dart';

class Features extends StatelessWidget {
  const Features({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Column(
        children: [
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
            children: const [
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: ItemRowColunm(
                    image: 'assets/images/inventario-icono.png',
                    title: "La gestión del inventario",
                    bodyText:
                        "Administre su inventario de principio a fin: reciba los productos que ordenó de su proveedor, realice un recuento de inventario para solucionar problemas de inventario y envíe solo los productos disponibles a sus clientes con una gestión de inventario precisa.",
                  )),
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: ItemRowColunm(
                    image: 'assets/images/escaner-barra.png',
                    title: "Escaneo de códigos",
                    bodyText:
                        "Para un cumplimiento de pedidos simple y sin errores, Sigest confía en el escaneo de códigos de barras. Etiquete cada producto con su respectivo SKU y escanee los códigos de barras para evitar costosos errores.",
                  )),
            ],
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
            children: const [
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: ItemRowColunm(
                    image: 'assets/images/rentable.png',
                    title: "Solución rentable",
                    bodyText:
                        "Una solución más rentable para otros sistemas complicados. Sigest te ofrece las funcionalidades más relevantes para tu pyme.",
                  )),
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: ItemRowColunm(
                    image: 'assets/images/multiplataforma.png',
                    title: "Multiplataforma",
                    bodyText:
                        "Sigest funciona para todas las plataformas existentes, desde la instalacion en moviles y escritorio hasta un facil acceso através de la web",
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
