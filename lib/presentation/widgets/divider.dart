import 'package:flutter/material.dart';

class DividerCustom extends StatelessWidget {
  const DividerCustom({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.0,
      child: Center(
        child: Container(
          margin: const EdgeInsetsDirectional.only(start: 1.0, end: 1.0),
          height: 1.0,
          width: MediaQuery.of(context).size.width * 0.30,
          color: const Color.fromARGB(255, 162, 196, 212),
        ),
      ),
    );
  }
}
