import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/costs/widgets/body_costs.dart';
import 'package:dinamica_landing_page/ui/widgets/my_drawer.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class CostsPage extends StatelessWidget {
  const CostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    double fontSize =
        ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE") ? 15 : 20;
    return Scaffold(
      extendBodyBehindAppBar: true,
      drawer: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
          ? const MyDrawer()
          : null,
      appBar: AppBar(
        shadowColor: Colors.black,
        //scrolledUnderElevation: 0.0,
        backgroundColor: primary,
        elevation: 10,
        title: Visibility(
          visible: true,
          child: Image.asset(
            'assets/images/dinamica/Dinamica.png',
            height: 40,
          ),
        ),
        centerTitle: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
            ? true
            : false,
        automaticallyImplyLeading:
            ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
                ? true
                : false,
        actions: [
          Visibility(
            visible: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
                ? false
                : true,
            child: TextButton(
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/', (Route<dynamic> route) => false);
                },
                child: Text(
                  'Inicio',
                  style: headlineTextStyle.copyWith(
                      fontSize: fontSize, color: Colors.white),
                  textAlign: TextAlign.center,
                )),
          ),
          Visibility(
            visible: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
                ? false
                : true,
            child: TextButton(
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/contacto');
                },
                child: Text(
                  'Contacto',
                  style: headlineTextStyle.copyWith(
                      fontSize: fontSize, color: Colors.white),
                  textAlign: TextAlign.center,
                )),
          ),
          Visibility(
            visible: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
                ? false
                : true,
            child: TextButton(
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/ayuda');
                },
                child: Text(
                  'Ayuda',
                  style: headlineTextStyle.copyWith(
                      fontSize: fontSize, color: Colors.white),
                  textAlign: TextAlign.center,
                )),
          ),
          Visibility(
            visible: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
                ? false
                : true,
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
              child: TextButton(
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15.0))),
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    splashFactory: NoSplash.splashFactory,
                    overlayColor: MaterialStateProperty.all(
                        Colors.black.withOpacity(0.1)),
                  ),
                  onPressed: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, '/', (Route<dynamic> route) => false);
                  },
                  child: Text(
                    'Descargar APP',
                    style: headlineTextStyle.copyWith(
                        fontSize: fontSize,
                        color: primary,
                        fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  )),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: const BodyCosts(),
    );
  }
}
