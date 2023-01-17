import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/help/widgets/frequent_questions.dart';
import 'package:dinamica_landing_page/ui/home/widgets/footer.dart';
import 'package:flutter/material.dart';
import 'package:dinamica_landing_page/ui/help/widgets/help_center.dart';
import 'package:responsive_framework/responsive_framework.dart';

class HelpPage extends StatefulWidget {
  const HelpPage({super.key});

  @override
  State<HelpPage> createState() => _HelpPageState();
}

class _HelpPageState extends State<HelpPage> {
  @override
  Widget build(BuildContext context) {
    double fontSize =
        ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE") ? 15 : 20;
    return Scaffold(
      extendBodyBehindAppBar: true,
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
        automaticallyImplyLeading: false,
        actions: [
          Visibility(
            visible: true,
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
            visible: true,
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
            visible: true,
            child: TextButton(
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      border: Border(
                          bottom: BorderSide(color: Colors.grey, width: 2.0))),
                  child: Text(
                    'Ayuda',
                    style: headlineTextStyle.copyWith(
                        fontWeight: FontWeight.bold,
                        fontSize: fontSize,
                        color: Colors.grey),
                    textAlign: TextAlign.center,
                  ),
                )),
          ),
          Visibility(
            visible: true,
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
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          children: const [
            HelpCenter(),
            FrequentQuestions(),
            SizedBox(height: 30),
            Footer(),
          ],
        )),
      ),
    );
  }
}
