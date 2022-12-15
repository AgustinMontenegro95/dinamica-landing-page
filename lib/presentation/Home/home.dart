import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:responsive_framework/responsive_framework.dart';
import 'package:sigest_landing_page/constants/components.dart';
import 'package:sigest_landing_page/presentation/Home/blocks/about_app.dart';
import 'package:sigest_landing_page/presentation/Home/blocks/contact.dart';
import 'package:sigest_landing_page/presentation/Home/blocks/cost_product.dart';
import 'package:sigest_landing_page/presentation/Home/blocks/footer.dart';
import 'package:sigest_landing_page/presentation/Home/blocks/presentation.dart';
import 'package:sigest_landing_page/presentation/Home/blocks/product.dart';
import 'package:sigest_landing_page/presentation/widgets/app_bar.dart';
import 'package:sigest_landing_page/presentation/widgets/parallax_divider.dart';

import 'package:sigest_landing_page/presentation/widgets/parallax_image.dart';

import 'blocks/features.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  double imgRateZero = 0;
  double imgRateOne = 10;
  double imgRateTwo = 0;
  double imgRateThree = 0;
  double imgRateFour = 10;
  late ScrollController scrollController;

  @override
  void initState() {
    scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sizeRes = ResponsiveWrapper.of(context);

    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBarCustom(scrollController: scrollController),
        body: NotificationListener(
          onNotification: (sc) {
            if (sc is ScrollUpdateNotification) {
              setState(() {
                imgRateFour -= sc.scrollDelta! / 3;
                imgRateThree -= sc.scrollDelta! / 3.5;
                imgRateTwo -= sc.scrollDelta! / 4.5;
                imgRateOne -= sc.scrollDelta! / 4;
                imgRateZero -= sc.scrollDelta! / 5;
              });
            }
            return true;
          },
          child: Stack(children: <Widget>[
            ParallaxWidget(top: imgRateZero, asset: "parallax"),
            ListView(
              controller: scrollController,
              children: [
                Container(
                  height: !sizeRes.isLargerThan(MOBILE)
                      ? sizeRes.scaledHeight * 0.40
                      : sizeRes.scaledHeight * 0.94,
                  color: Colors.transparent,
                  /* child: Center(
                    child: SizedBox(
                      width: 250.0,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          DefaultTextStyle(
                            style: animationtextStyle,
                            child: AnimatedTextKit(
                              repeatForever: true,
                              animatedTexts: [
                                TypewriterAnimatedText(
                                    'Gestiona todos tus productos',
                                    textAlign: TextAlign.center),
                                TypewriterAnimatedText('Actualiza tu negocio',
                                    textAlign: TextAlign.center),
                                TypewriterAnimatedText('Maximiza la eficiencia',
                                    textAlign: TextAlign.center),
                                TypewriterAnimatedText('Minimiza tus gastos',
                                    textAlign: TextAlign.center),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                          ),
                        ],
                      ),
                    ),
                  ), */
                ),
                const AboutApp(),
                const Presentation(),
                /* SizedBox(
                    height: !sizeRes.isLargerThan(MOBILE)
                        ? sizeRes.screenHeight * 0.15
                        : 300,
                    child: LocationListItem(
                        image: 'assets/parallax/background1.jpg')),
                const Product(),
                SizedBox(
                    height: !sizeRes.isLargerThan(MOBILE)
                        ? sizeRes.screenHeight * 0.17
                        : 400,
                    child: LocationListItem(
                        image: 'assets/parallax/background2.jpg')),
                const CostProduct(), */
                const Contact(),
                const Features(),
                const Footer(),
              ],
            ),
          ]),
        ));
  }
}
