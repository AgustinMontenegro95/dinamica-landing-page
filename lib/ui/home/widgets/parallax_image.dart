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
      top: 0,
      child: SizedBox(
        height: sizeRes.scaledHeight,
        width: sizeRes.scaledWidth,
        child: sizeRes.isSmallerThan(MOBILE)
            ? Image.asset("assets/images/parallax/parallax-mobile.jpg",
                fit: BoxFit.cover)
            : sizeRes.isSmallerThan("MOBILE_LARGE")
                ? Image.asset("assets/images/parallax/parallax-mobile.jpg",
                    fit: BoxFit.cover)
                : sizeRes.isSmallerThan(TABLET)
                    ? Image.asset("assets/images/parallax/parallax.jpg",
                        fit: BoxFit.cover)
                    : sizeRes.isSmallerThan(DESKTOP)
                        ? Image.asset("assets/images/parallax/parallax.jpg",
                            fit: BoxFit.cover)
                        : sizeRes.isSmallerThan("DESKTOP_LARGE")
                            ? Image.asset("assets/images/parallax/parallax.jpg",
                                fit: BoxFit.cover)
                            : Image.asset("assets/images/parallax/parallax.jpg",
                                fit: BoxFit.cover),
      ),
    );
  }
}
