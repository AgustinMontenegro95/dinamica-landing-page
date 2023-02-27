import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/ui/home/widgets/available_buton.dart';

class Presentation extends StatefulWidget {
  const Presentation({Key? key}) : super(key: key);

  @override
  State<Presentation> createState() => _PresentationState();
}

class _PresentationState extends State<Presentation>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 60),
      vsync: this,
    )..repeat();
    _animation = Tween<double>(
      begin: 0.0,
      end: 2 * pi,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)),
      //margin: blockMargin,
      padding: blockPadding(context),
      child: Column(
        children: [
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowCrossAxisAlignment: CrossAxisAlignment.start,
            columnSpacing: 10,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 3,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(25, 32, 25, 0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Center(
                          child: Text(
                            "¡Potenciá el uso de tu dinero!".toUpperCase(),
                            textAlign: TextAlign.center,
                            style: const TextStyle(
                              fontSize: 40,
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.5,
                              shadows: <Shadow>[
                                Shadow(
                                  offset: Offset(3.0, 3.0),
                                  blurRadius: 2.0,
                                  color: Colors.grey,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.only(bottom: 20),
                        child: Center(
                          child: Text(
                            "Con DINÁMICA manejás tu dinero como vos querés.\nDescubrí todo lo que podés hacer.",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Column(
                          children: const [
                            Tooltip(
                              message: "Ver en Google Play",
                              child: AvailableButton(
                                store: "Google Play",
                                image: "google-play",
                                link:
                                    "https://play.google.com/store/apps/details?id=com.dinamica.wallet",
                              ),
                            ),
                            SizedBox(height: 10),
                            Tooltip(
                              message: "Ver en App Store",
                              child: AvailableButton(
                                store: "App Store   ",
                                image: "app-store",
                                link:
                                    "https://apps.apple.com/us/app/dinamica/id1632974131",
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20, bottom: 20),
                        child: Center(
                          child: Text(
                            "O podés escanear el siguiente QR",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.grey.shade800,
                            ),
                          ),
                        ),
                      ),
                      Center(
                        child: Image.asset(
                            "assets/images/qr-download-small.png",
                            width: ResponsiveWrapper.of(context)
                                    .isSmallerThan(MOBILE)
                                ? 110
                                : 140),
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              launchUrlString(
                                  "https://www.youtube.com/watch?v=K_IX1mZ6NEw",
                                  mode: LaunchMode.externalApplication);
                            },
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Flexible(
                                  child: Text.rich(
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "Ver demo en",
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.w700,
                                              color: primary),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                const SizedBox(width: 5),
                                Image.asset(
                                  ResponsiveWrapper.of(context)
                                          .isSmallerThan("MOBILE_LARGE")
                                      ? 'assets/images/youtube-small.png'
                                      : 'assets/images/youtube-large.png',
                                  width: 75,
                                  fit: BoxFit.cover,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 2,
                child: Stack(
                  children: [
                    SizedBox(
                      height: 550,
                      child: RotationTransition(
                        turns: _animation,
                        child: Image.asset(
                          "assets/images/dinamica/opacity-dinamica.png",
                          height: 500,
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 550,
                        child: Image.asset("assets/images/presentation.png")),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
