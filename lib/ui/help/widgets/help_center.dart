import 'package:animate_do/animate_do.dart';
import 'package:dinamica_landing_page/constants/colors.dart';
import 'package:flutter/material.dart';

class HelpCenter extends StatefulWidget {
  const HelpCenter({Key? key}) : super(key: key);

  @override
  State<HelpCenter> createState() => _HelpCenterState();
}

class _HelpCenterState extends State<HelpCenter> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 200,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.grey, Colors.white],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ZoomIn(
              child: Text(
                "Centro de ayuda".toUpperCase(),
                textAlign: TextAlign.center,
                style: const TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 5,
                  wordSpacing: 5,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(3.0, 3.0),
                      blurRadius: 3.0,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
            ),
            FadeInRight(
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Text(
                  "Encontrá las respuestas a todas tus consultas",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 25,
                    color: primary,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
