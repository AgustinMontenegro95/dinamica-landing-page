import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/material.dart';

class TitleColumn extends StatelessWidget {
  final String title;
  final String description;
  final double heigth;
  final double width;

  const TitleColumn(
      {super.key,
      required this.title,
      required this.description,
      required this.heigth,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: heigth,
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: primary,
          //borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        child: Column(
          children: [
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.white,
                  //fontWeight: FontWeight.bold,
                  fontSize: 15),
            ),
            Text(
              description,
              style: const TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.w500),
            ),
          ],
        ));
  }
}
