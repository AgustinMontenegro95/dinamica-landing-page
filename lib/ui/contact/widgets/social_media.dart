import 'package:animate_do/animate_do.dart';
import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_launcher/url_launcher_string.dart';

class SocialMedia extends StatelessWidget {
  const SocialMedia({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextStyle titleContactTextStyle = TextStyle(
      fontWeight: FontWeight.bold,
      color: Colors.black,
      fontSize: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
          ? 20
          : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? 15
              : 20,
      letterSpacing: 2,
    );
    TextStyle subtitleContactTextStyle = TextStyle(
      color: Colors.grey.shade700,
      fontSize: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
          ? 18
          : ResponsiveWrapper.of(context).isSmallerThan(TABLET)
              ? 13
              : 18,
    );
    return Container(
      width: double.infinity,
      padding: blockPadding(context).copyWith(
          top: 20,
          bottom: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
              ? 20
              : 50),
      child: ResponsiveRowColumn(
        layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
            ? ResponsiveRowColumnType.COLUMN
            : ResponsiveRowColumnType.ROW,
        rowCrossAxisAlignment: CrossAxisAlignment.center,
        columnSpacing: 50,
        children: [
          ResponsiveRowColumnItem(
            rowFlex: 3,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(25, 32, 25, 0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  FadeInRight(
                    child: ResponsiveRowColumn(
                      layout: ResponsiveWrapper.of(context)
                              .isSmallerThan("MOBILE_LARGE")
                          ? ResponsiveRowColumnType.COLUMN
                          : ResponsiveRowColumnType.ROW,
                      rowMainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      columnSpacing: 20,
                      children: [
                        ResponsiveRowColumnItem(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/facebook.png',
                                width: ResponsiveWrapper.of(context)
                                        .isSmallerThan(TABLET)
                                    ? 30
                                    : 40,
                                color: primary,
                              ),
                              Text("Facebook", style: titleContactTextStyle),
                              TextButton(
                                onPressed: () => launchUrlString(
                                    "https://www.facebook.com/tarjetadinamica"),
                                style: ButtonStyle(
                                  splashFactory: NoSplash.splashFactory,
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.black.withOpacity(0.0)),
                                ),
                                child: Text("VER",
                                    style: subtitleContactTextStyle),
                              ),
                            ],
                          ),
                        ),
                        ResponsiveRowColumnItem(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/instagram.png',
                                width: ResponsiveWrapper.of(context)
                                        .isSmallerThan(TABLET)
                                    ? 30
                                    : 40,
                                color: primary,
                              ),
                              Text("Instagram", style: titleContactTextStyle),
                              TextButton(
                                onPressed: () => launchUrlString(
                                    "https://www.instagram.com/dinamica.com.ar"),
                                style: ButtonStyle(
                                  splashFactory: NoSplash.splashFactory,
                                  overlayColor: MaterialStateProperty.all(
                                      Colors.black.withOpacity(0.0)),
                                ),
                                child: Text("VER",
                                    style: subtitleContactTextStyle),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
