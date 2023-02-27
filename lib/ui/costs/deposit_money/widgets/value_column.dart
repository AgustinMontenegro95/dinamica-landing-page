import 'package:flutter/material.dart';

class ValueColumn extends StatelessWidget {
  final String value;
  final double heigth;
  final double width;

  const ValueColumn(
      {super.key,
      required this.value,
      required this.heigth,
      required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: width,
        height: heigth,
        padding: const EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          color: Colors.red[300],
          //borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.white),
        ),
        child: Center(
          child: Text(
            value,
            textAlign: TextAlign.center,
            style: const TextStyle(
              color: Colors.white,
              //fontWeight: FontWeight.bold,
              fontSize: 15,
            ),
          ),
        ));
  }
}
