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
                    title:
                        "Una cuenta para que manejes tu dinero como vos quieras",
                    bodyText:
                        "Seguí todos tus movimientos: transferencias, pagos, recargas y más. Usá los filtros para que sea más fácil encontrar lo que necesitás. Creá tu cuenta sin costo de mantenimiento.",
                  )),
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: ItemRowColunm(
                    image: 'assets/images/escaner-barra.png',
                    title: "¿Necesitás dinero? Lo acreditamos en tu cuenta",
                    bodyText:
                        "Pedí tu préstamo hasta \$150.000. 100% online. Lo devolvés hasta en 36 cuotas.",
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
                    title: "Elegí pagar en cuotas y con promociones exclusivas",
                    bodyText:
                        "Descubrí financiaciones y promociones en comercios de todo el país.",
                  )),
              ResponsiveRowColumnItem(
                  rowFlex: 1,
                  rowFit: FlexFit.tight,
                  child: ItemRowColunm(
                    image: 'assets/images/multiplataforma.png',
                    title: "¿Tenés un negocio? Elegí cómo querés cobrar",
                    bodyText:
                        "Te ofrecemos los medios de cobro presenciales y online que mejor se adaptan a tus necesidades.",
                  )),
            ],
          ),
        ],
      ),
    );
  }
}
