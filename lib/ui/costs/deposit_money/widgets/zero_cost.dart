import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/material.dart';

class ZeroCost extends StatelessWidget {
  const ZeroCost({super.key});

  @override
  Widget build(BuildContext context) {
    TextStyle textStyle = const TextStyle(color: primary, fontSize: 30);
    double spaceText = 20;
    return Container(
      decoration: BoxDecoration(color: Colors.red[50]),
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("\$0",
              style: TextStyle(
                  color: primary, fontSize: 130, fontWeight: FontWeight.bold)),
          const SizedBox(width: 35),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Descarga de la app", style: textStyle),
              SizedBox(height: spaceText),
              Text("Costo de apertura, mantenimiento y cierre",
                  style: textStyle),
              SizedBox(height: spaceText),
              Text("Transferencias entre usuarios Ualá", style: textStyle),
              SizedBox(height: spaceText),
              Text("Cargas en efectivo (1)", style: textStyle),
              SizedBox(height: spaceText),
              Text("Carga por transferencia (2)", style: textStyle),
              SizedBox(height: spaceText),
              Text("Carga por retiros (3)", style: textStyle),
            ],
          )
        ],
      ),
    );
  }
}
