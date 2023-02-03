import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_wrapper.dart';

class ParallaxWidget extends StatelessWidget {
  const ParallaxWidget({
    Key? key,
    required this.top,
    required this.asset,
  }) : super(key: key);

  final double top;
  final String asset;

  @override
  Widget build(BuildContext context) {
    final sizeRes = ResponsiveWrapper.of(context);

    return Positioned(
      top: top,
      child: SizedBox(
        height: !sizeRes.isLargerThan(MOBILE)
            ? sizeRes.scaledHeight * 0.50
            : sizeRes.scaledHeight,
        width: sizeRes.scaledWidth,
        child: sizeRes.isSmallerThan(MOBILE)
            ? Image.asset("assets/images/parallax/parallax-mobile.png",
                fit: BoxFit.cover)
            : sizeRes.isSmallerThan("MOBILE_LARGE")
                ? Image.asset(
                    "assets/images/parallax/parallax-mobile-large.png",
                    fit: BoxFit.cover)
                : sizeRes.isSmallerThan(TABLET)
                    ? Image.asset("assets/images/parallax/parallax-mobile.png",
                        fit: BoxFit.cover)
                    : sizeRes.isSmallerThan(DESKTOP)
                        ? Image.asset(
                            "assets/images/parallax/parallax-desktop.png",
                            fit: BoxFit.cover)
                        : sizeRes.isSmallerThan("DESKTOP_LARGE")
                            ? Image.asset(
                                "assets/images/parallax/parallax-desktop-large.png",
                                fit: BoxFit.cover)
                            : Image.asset("assets/images/parallax/$asset.png",
                                fit: BoxFit.cover),
      ),
    );
  }
}
