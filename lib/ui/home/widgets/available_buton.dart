import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';

class AvailableButton extends StatelessWidget {
  final String image;
  final String store;
  final String link;

  const AvailableButton(
      {super.key,
      required this.image,
      required this.store,
      required this.link});

  @override
  Widget build(BuildContext context) {
    double width = ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
        ? 0.75
        : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? 0.60
            : ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? 0.50
                : ResponsiveWrapper.of(context).isSmallerThan("DESKTOP_LARGE")
                    ? 0.40
                    : 0.28;

    double fontSize = ResponsiveWrapper.of(context)
            .isSmallerThan("MOBILE_LARGE")
        ? 20
        : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? 20
            : ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? 22
                : ResponsiveWrapper.of(context).isSmallerThan("DESKTOP_LARGE")
                    ? 23
                    : 25;

    double iconSize = ResponsiveWrapper.of(context)
            .isSmallerThan("MOBILE_LARGE")
        ? 23
        : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
            ? 23
            : ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                ? 23
                : ResponsiveWrapper.of(context).isSmallerThan("DESKTOP_LARGE")
                    ? 25
                    : 25;

    return SizedBox(
      width: MediaQuery.of(context).size.width * width,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12), // <-- Radius
            ),
          ),
          onPressed: () {
            launchUrlString(link);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 7),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/available-buttons/$image.png',
                    width: iconSize),
                const SizedBox(width: 10),
                Flexible(
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text: "Disponible en ",
                            style: TextStyle(
                                fontSize: fontSize,
                                fontWeight: FontWeight.w100)),
                        TextSpan(
                          text: store,
                          style: TextStyle(
                              fontSize: fontSize, fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )),
    );
  }
}
