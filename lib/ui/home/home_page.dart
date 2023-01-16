import 'package:flutter/material.dart';
import 'package:dinamica_landing_page/ui/home/blocks/footer.dart';
import 'package:dinamica_landing_page/ui/home/blocks/presentation.dart';
import 'package:dinamica_landing_page/ui/widgets/app_bar.dart';
import 'package:dinamica_landing_page/ui/widgets/parallax_image.dart';

import 'package:responsive_framework/responsive_framework.dart';
import 'package:scroll_pos/scroll_pos.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  double imgRateZero = 0;
  late ScrollPosController scrollController;
  static const itemCount = 3;

  @override
  void initState() {
    scrollController = ScrollPosController(itemCount: itemCount);
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

    List<Widget> listWidgets = [
      Container(
        height: !sizeRes.isLargerThan(MOBILE)
            ? sizeRes.scaledHeight * 0.40
            : sizeRes.scaledHeight * 0.94,
        color: Colors.transparent,
      ),
      const Presentation(),
      const Footer(),
    ];

    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBarCustom(scrollController: scrollController),
      body: NotificationListener(
        onNotification: (sc) {
          if (sc is ScrollUpdateNotification) {
            setState(() {
              imgRateZero -= sc.scrollDelta! / 5;
            });
          }
          return true;
        },
        child: Stack(
          children: <Widget>[
            ParallaxWidget(top: imgRateZero, asset: "parallax"),
            ListView.builder(
              controller: scrollController,
              itemCount: itemCount,
              itemBuilder: (context, index) {
                return listWidgets[index];
              },
            ),
          ],
        ),
      ),
    );
  }
}
