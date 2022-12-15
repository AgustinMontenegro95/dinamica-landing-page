import 'package:flutter/material.dart';

import 'package:sigest_landing_page/constants/components.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AboutApp extends StatelessWidget {
  const AboutApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 10),
        width: double.infinity,
        //height: 420,
        decoration: BoxDecoration(
          /* image: DecorationImage(
              image: AssetImage("assets/images/background-grey.jpg"),
              fit: BoxFit.fill), */
          gradient: LinearGradient(colors: [
            Color.fromARGB(255, 221, 221, 221),
            Color.fromARGB(255, 180, 180, 180)
          ]),
          //color: const Color.fromRGBO(237, 237, 237, 1),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 100),
              child: Text(
                '¿Qué es Dinámica Pay?',
                style: headlineTextStyle.copyWith(
                    fontSize: 65, color: Colors.black),
                textAlign: TextAlign.start,
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Text(
              'El software de gestión de stock de Sigest es una solución basada en la nube diseñada para cubrir la gestión de inventario y el cumplimiento de pedidos de todos: minoristas en línea, comercio electrónico u operaciones industriales, entre otros. Sigest cubre cada detalle del proceso de cumplimiento de pedidos para una experiencia rápida y sin complicaciones. Desde el abastecimiento de productos hasta la gestión de inventario, la selección, el embalaje y el envío, lo tenemos cubierto.',
              style: buttonTextStyle.copyWith(color: Colors.black),
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton(
              onPressed: () {
                launchUrlString("https://soludevs.web.app/");
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Color.fromARGB(255, 20, 135, 243)),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18.0),
                  ))),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: const [
                  Text('Saber más'),
                  Icon(Icons.arrow_forward_ios_rounded)
                ],
              ),
            )
          ],
        ));
  }
}
