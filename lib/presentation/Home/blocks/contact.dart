import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class Contact extends StatelessWidget {
  const Contact({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle titleContactTextStyle = TextStyle(
      color: Colors.white,
      fontSize: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
          ? 20
          : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? 15
              : 20,
      letterSpacing: 2,
    );
    TextStyle subtitleContactTextStyle = TextStyle(
      color: Colors.grey,
      fontSize: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
          ? 18
          : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? 13
              : 18,
    );
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Colors.black,
        gradient: LinearGradient(colors: [
          Colors.black,
          Color.fromARGB(255, 19, 19, 19),
        ]),
        //borderRadius: BorderRadius.circular(4),
      ),
      padding: blockPadding(context),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 1,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Image.asset(
                    "assets/images/contact.png",
                    height: 300,
                  ),
                ),
              ],
            ),
          ),
          ResponsiveRowColumnItem(
            rowFlex: 3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 32, 25, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    padding: const EdgeInsets.only(bottom: 15),
                    child: const Text(
                      "Te ayudamos de la manera que prefieras",
                      style: TextStyle(
                          letterSpacing: 2,
                          fontSize: 40,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Text(
                      "Recibí atención personalizada en nuestras sucursales, por teléfono, chat, redes sociales o en nuestro Centro de ayuda.",
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.grey.shade100,
                        fontStyle: FontStyle.italic,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  ResponsiveRowColumn(
                    layout: ResponsiveWrapper.of(context)
                            .isSmallerThan("MOBILE_LARGE")
                        ? ResponsiveRowColumnType.COLUMN
                        : ResponsiveRowColumnType.ROW,
                    rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ResponsiveRowColumnItem(
                        child: Column(
                          children: [
                            Icon(
                              Icons.phone,
                              color: primary,
                              size: ResponsiveWrapper.of(context)
                                      .isSmallerThan(TABLET)
                                  ? 40
                                  : 50,
                            ),
                            SelectableText("Llamanos",
                                style: titleContactTextStyle),
                            TextButton(
                              onPressed: () {
                                kIsWeb
                                    ? copyText("0810 555 4345", context)
                                    : callMe(number: "0810 555 4345");
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.grey,
                              ),
                              child: Text("0810 555 4345",
                                  style: subtitleContactTextStyle),
                            ),
                          ],
                        ),
                      ),
                      ResponsiveRowColumnItem(
                        child: Column(
                          children: [
                            Icon(
                              Icons.mail,
                              color: primary,
                              size: ResponsiveWrapper.of(context)
                                      .isSmallerThan(TABLET)
                                  ? 40
                                  : 50,
                            ),
                            SelectableText(
                              "Mandanos un mail",
                              style: titleContactTextStyle,
                            ),
                            TextButton(
                              onPressed: () async {
                                final Uri uri =
                                    Uri.parse('mailto:info@midinamica.com.ar?'
                                        'subject=Consulta Dinamica Pay'
                                        '&'
                                        'body=Insertar consulta aqui.');
                                if (!await launchUrl(uri)) {
                                  throw 'Could not launch $uri';
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.grey,
                              ),
                              child: Text("info@midinamica.com.ar",
                                  style: subtitleContactTextStyle),
                            ),
                          ],
                        ),
                      ),
                      ResponsiveRowColumnItem(
                          child: Column(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primary,
                            size: ResponsiveWrapper.of(context)
                                    .isSmallerThan(TABLET)
                                ? 40
                                : 50,
                          ),
                          SelectableText(
                            "Nuestras sucursales",
                            style: titleContactTextStyle,
                            textAlign: TextAlign.center,
                          ),
                          TextButton(
                            onPressed: () {
                              branchOffice(context);
                            },
                            style: TextButton.styleFrom(
                              foregroundColor: Colors.grey,
                            ),
                            child: Text("VER", style: subtitleContactTextStyle),
                          ),
                        ],
                      )),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  callMe({required String number}) async {
    final Uri url = Uri(scheme: 'tel', path: number);
    if (!await launchUrl(url)) {
      throw 'Could not launch $url';
    }
  }

  copyText(String copy, BuildContext context) {
    Clipboard.setData(ClipboardData(text: copy));
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        backgroundColor: primary,
        content: Text("Se copió al portapapeles el número de teléfono.",
            style: TextStyle(color: Colors.white))));
  }

  branchOffice(BuildContext context) {
    return showDialog(
      context: context,
      builder: (ctx) => Container(
        decoration: BoxDecoration(color: Colors.black.withOpacity(0.2)),
        child: AlertDialog(
          title: Center(
            child: Image.asset(
              "assets/images/branch-office.png",
              height: 50,
            ),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: Text(
                  "Encontra tu Centro de Atención mas cercano",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              branchOfficeListTile(
                  title: "Santiago del Estero",
                  subtitle: "Peatonal Tucumán Nº189",
                  location: "https://goo.gl/maps/oKWpEDeqCkwfmr8a7"),
              const Divider(),
              branchOfficeListTile(
                  title: "La Banda",
                  subtitle: "España Nº213",
                  location: "https://goo.gl/maps/aJbznBm5DxEHGQRK9"),
              const Divider(),
              branchOfficeListTile(
                  title: "Receptoría Frías",
                  subtitle: "Carlos Monti Nº230",
                  location: ""),
              const Divider(),
              branchOfficeListTile(
                  title: "Receptoría Termas de Rio Hondo",
                  subtitle: "Caseros Nº268",
                  location: "https://goo.gl/maps/gwk8BXxQzXXudhjf7"),
              const Divider(),
              branchOfficeListTile(
                  title: "Receptoría Añatuya",
                  subtitle: "Aristóbulo del Valle casi Alvear",
                  location: ""),
              const Divider(),
            ],
          ),
          actions: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  textStyle: const TextStyle(fontSize: 15)),
              child: const Text("ACEPTAR"),
            ),
          ],
        ),
      ),
    );
  }

  Widget branchOfficeListTile(
      {required String title,
      required String subtitle,
      required String location}) {
    TextStyle locationBranchOficceTextStyle = const TextStyle(
        color: primary, fontWeight: FontWeight.bold, fontSize: 20);
    TextStyle addressBranchOficceTextStyle =
        TextStyle(color: Colors.grey.shade600, fontSize: 17);
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          location == "" ? null : launchUrlString(location);
          ;
        },
        child: ListTile(
          title: Text(title,
              style: locationBranchOficceTextStyle,
              textAlign: TextAlign.center),
          subtitle: Text(subtitle,
              style: addressBranchOficceTextStyle, textAlign: TextAlign.center),
        ),
      ),
    );
  }
}
