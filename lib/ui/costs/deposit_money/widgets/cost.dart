import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:responsive_framework/responsive_framework.dart';

class Cost extends StatefulWidget {
  const Cost({Key? key}) : super(key: key);

  @override
  CostState createState() => CostState();
}

class CostState extends State<Cost> {
  @override
  Widget build(BuildContext context) {
    double imageSize =
        ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE") ? 300 : 500;
    return Container(
      width: double.infinity,
      /* decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(4),
          border: Border.all(color: border)), */
      //margin: blockMargin,
      padding: blockPadding(context),
      child: Stack(
        children: [
          ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
              ? Positioned(
                  //top: 150,
                  child: Container(
                    decoration: BoxDecoration(
                        //borderRadius: BorderRadius.circular(10),
                        gradient: LinearGradient(
                            colors: [Colors.red[100]!, Colors.white],
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter)),
                    width: MediaQuery.of(context).size.width,
                    height: 300,
                  ),
                )
              : Positioned(
                  bottom: -1,
                  right: -1,
                  child: ClipPath(
                    clipper: WaveClipperTwo(flip: true, reverse: true),
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: const BorderRadius.only(
                              topLeft: Radius.circular(2000)),
                          gradient: LinearGradient(
                              colors: [Colors.red[100]!, Colors.red[50]!],
                              begin: Alignment.topCenter,
                              end: Alignment.bottomCenter)),
                      width: MediaQuery.of(context).size.width,
                      height: 350,
                    ),
                  ),
                ),
          ResponsiveRowColumn(
            layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? ResponsiveRowColumnType.COLUMN
                : ResponsiveRowColumnType.ROW,
            rowSpacing: 50,
            rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
            columnSpacing: 50,
            children: [
              ResponsiveRowColumnItem(
                rowFlex: 3,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5.0, top: 10.0),
                        child: Text("Costos",
                            style: TextStyle(
                                color: Colors.grey.shade700, fontSize: 25)),
                      ),
                      const SizedBox(height: 40),
                      const Text("Elegí lo que quieras sin costos ocultos",
                          style: TextStyle(
                              color: primary,
                              fontSize: 70,
                              fontWeight: FontWeight.bold)),
                      const SizedBox(height: 20),
                      Text("No tenemos letra chica ni costos ocultos.",
                          style: TextStyle(
                              color: Colors.grey.shade700, fontSize: 35)),
                    ],
                  ),
                ),
              ),
              ResponsiveRowColumnItem(
                rowFlex: 2,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Image.asset("assets/images/cost.png",
                        width: imageSize, height: imageSize, fit: BoxFit.cover),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
