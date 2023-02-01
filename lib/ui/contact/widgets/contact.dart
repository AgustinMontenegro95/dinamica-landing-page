import 'package:animate_do/animate_do.dart';
import 'package:dinamica_landing_page/constants/components.dart';
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
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
          ? 20
          : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? 15
              : 20,
      letterSpacing: 2,
    );
    TextStyle subtitleContactTextStyle = TextStyle(
      color: Colors.grey.shade700,
      fontSize: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
          ? 18
          : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? 13
              : 18,
    );
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.grey.shade400,
            Colors.white,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: blockPadding(context).copyWith(
          top: 20,
          bottom: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
              ? 20
              : 20),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        columnSpacing: 50,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 32, 25, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  ZoomIn(
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Text(
                        "Te ayudamos de la manera que prefieras".toUpperCase(),
                        style: TextStyle(
                          letterSpacing: 2,
                          fontSize: ResponsiveWrapper.of(context)
                                  .isSmallerThan(MOBILE)
                              ? 29
                              : ResponsiveWrapper.of(context)
                                      .isSmallerThan("MOBILE_LARGE")
                                  ? 30
                                  : ResponsiveWrapper.of(context)
                                          .isSmallerThan(TABLET)
                                      ? 34
                                      : 38,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          shadows: const <Shadow>[
                            Shadow(
                              offset: Offset(3.0, 3.0),
                              blurRadius: 3.0,
                              color: Colors.black,
                            ),
                          ],
                        ),
                        textAlign:
                            ResponsiveWrapper.of(context).isSmallerThan(MOBILE)
                                ? TextAlign.center
                                : ResponsiveWrapper.of(context)
                                        .isSmallerThan("MOBILE_LARGE")
                                    ? TextAlign.center
                                    : ResponsiveWrapper.of(context)
                                            .isSmallerThan(TABLET)
                                        ? TextAlign.center
                                        : TextAlign.center,
                      ),
                    ),
                  ),
                  FadeInRight(
                    child: Container(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        "Recibí atención personalizada en nuestras sucursales, redes sociales, por teléfono, por chat o en nuestro centro de ayuda.",
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.grey.shade700,
                          fontStyle: FontStyle.italic,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ),
                  ),
                  FadeInLeft(
                    child: ResponsiveRowColumn(
                      layout: ResponsiveWrapper.of(context)
                              .isSmallerThan("MOBILE_LARGE")
                          ? ResponsiveRowColumnType.COLUMN
                          : ResponsiveRowColumnType.ROW,
                      rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      columnSpacing: 20,
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
                              Text("Llámanos al número",
                                  style: titleContactTextStyle),
                              TextButton(
                                onPressed: () {
                                  ResponsiveWrapper.of(context)
                                          .isLargerThan("MOBILE_LARGE")
                                      ? copyText("0810 555 2403", context)
                                      : callMe(number: "0810 555 2403");
                                },
                                style: ButtonStyle(
                                  splashFactory: NoSplash.splashFactory,
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.black.withOpacity(0.0)),
                                ),
                                child: Text("0810 555 2403",
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
                              Text(
                                "Enviá un mail",
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
                                style: ButtonStyle(
                                  splashFactory: NoSplash.splashFactory,
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.black.withOpacity(0.0)),
                                ),
                                child: Text("info@midinamica.com.ar",
                                    style: subtitleContactTextStyle),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  FadeInRight(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: ResponsiveRowColumn(
                        layout: ResponsiveWrapper.of(context)
                                .isSmallerThan("MOBILE_LARGE")
                            ? ResponsiveRowColumnType.COLUMN
                            : ResponsiveRowColumnType.ROW,
                        rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        rowCrossAxisAlignment: CrossAxisAlignment.start,
                        columnSpacing: 20,
                        children: [
                          ResponsiveRowColumnItem(
                            columnOrder: 1,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/facebook.png',
                                  width: ResponsiveWrapper.of(context)
                                          .isSmallerThan(TABLET)
                                      ? 30
                                      : 40,
                                  color: primary,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text("Facebook",
                                      style: titleContactTextStyle),
                                ),
                                TextButton(
                                  onPressed: () => launchUrlString(
                                      "https://www.facebook.com/tarjetadinamica"),
                                  style: ButtonStyle(
                                    splashFactory: NoSplash.splashFactory,
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.black.withOpacity(0.0)),
                                  ),
                                  child: Text("/tarjetadinamica",
                                      style: subtitleContactTextStyle),
                                ),
                              ],
                            ),
                          ),
                          ResponsiveRowColumnItem(
                              columnOrder: 0,
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
                                  Text(
                                    "Nuestras sucursales",
                                    style: titleContactTextStyle,
                                    textAlign: TextAlign.center,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      branchOffice(context);
                                    },
                                    style: ButtonStyle(
                                      splashFactory: NoSplash.splashFactory,
                                      overlayColor: MaterialStateProperty.all(
                                          Colors.black.withOpacity(0.0)),
                                    ),
                                    child: Text("VER",
                                        style: subtitleContactTextStyle),
                                  ),
                                ],
                              )),
                          ResponsiveRowColumnItem(
                            columnOrder: 2,
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/instagram.png',
                                  width: ResponsiveWrapper.of(context)
                                          .isSmallerThan(TABLET)
                                      ? 30
                                      : 40,
                                  color: primary,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(top: 5),
                                  child: Text("Instagram",
                                      style: titleContactTextStyle),
                                ),
                                TextButton(
                                  onPressed: () => launchUrlString(
                                      "https://www.instagram.com/dinamica.com.ar"),
                                  style: ButtonStyle(
                                    splashFactory: NoSplash.splashFactory,
                                    overlayColor: MaterialStateProperty.all(
                                        Colors.black.withOpacity(0.0)),
                                  ),
                                  child: Text("/dinamica.com.ar",
                                      style: subtitleContactTextStyle),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
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
                  "Encontrá tu centro de atención más cercano",
                  style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
                ),
              ),
              const Divider(),
              branchOfficeListTile(
                  title: "Santiago del Estero",
                  subtitle: "Peatonal Tucumán Nº189",
                  location:
                      "https://www.google.com.ar/maps/place/DIN%C3%81MICA/@-27.7849133,-64.2634483,17z/data=!3m1!4b1!4m5!3m4!1s0x943b521416793fbb:0xf44af0377609b0a!8m2!3d-27.7849181!4d-64.2612596"),
              const Divider(),
              branchOfficeListTile(
                  title: "La Banda",
                  subtitle: "Rivadavia Nº248",
                  location:
                      "https://www.google.com.ar/maps/place/DIN%C3%81MICA/@-27.7294497,-64.2414537,17z/data=!3m1!4b1!4m5!3m4!1s0x943b515f064542c7:0x13e8c872f48a6a6d!8m2!3d-27.7294601!4d-64.239275"),
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
              child: const Text("Cerrar"),
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
    return ListTile(
      onTap: () {
        location == "" ? null : launchUrlString(location);
      },
      title: Text(title,
          style: locationBranchOficceTextStyle, textAlign: TextAlign.center),
      subtitle: Text(subtitle,
          style: addressBranchOficceTextStyle, textAlign: TextAlign.center),
    );
  }
}
