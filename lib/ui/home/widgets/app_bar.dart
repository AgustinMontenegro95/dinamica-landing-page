import 'package:flutter/material.dart';
import 'dart:math';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scroll_pos/scroll_pos.dart';

import '../../../constants/components.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustom({Key? key, required this.scrollController})
      : super(key: key);
  final ScrollPosController scrollController;

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class _AppBarCustomState extends State<AppBarCustom> {
  static const double emptySpace = 10.0;

  bool isScrolledToTop = true;
  double offset = 0.0;

  @override
  void initState() {
    widget.scrollController.addListener(_scrollListener);
    super.initState();
  }

  _scrollListener() {
    if (widget.scrollController.offset <=
            widget.scrollController.position.minScrollExtent &&
        !widget.scrollController.position.outOfRange) {
      if (!isScrolledToTop) {
        setState(() {
          isScrolledToTop = true;
        });
      }
    } else {
      if (widget.scrollController.offset > emptySpace && isScrolledToTop) {
        setState(() {
          isScrolledToTop = false;
        });
      }
      offset = widget.scrollController.offset;
    }
  }

  @override
  Widget build(BuildContext context) {
    final double transitionColor = min(max(offset, 0), 250) / 250;
    double fontSize =
        ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE") ? 15 : 20;

    return AppBar(
      shadowColor: Colors.black,
      scrolledUnderElevation: 0.0,
      backgroundColor: isScrolledToTop
          ? Colors.transparent
          : transitionColor < 1
              ? primary.withOpacity(transitionColor)
              : primary,
      elevation: isScrolledToTop ? 0 : 10,
      centerTitle: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
          ? true
          : false,
      title: Visibility(
        visible: transitionColor < 1 ? false : true,
        child: Image.asset(
          'assets/images/dinamica/Dinamica.png',
          height: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
              ? 40
              : 40,
        ),
      ),
      automaticallyImplyLeading: transitionColor < 1 ? false : true,
      actions: [
        Visibility(
          visible: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
              ? false
              : transitionColor < 1
                  ? false
                  : true,
          child: TextButton(
              style: ButtonStyle(
                splashFactory: NoSplash.splashFactory,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                setState(() {
                  widget.scrollController.scrollToItem(0, animate: true);
                });
              },
              child: Text(
                'Inicio',
                style: headlineTextStyle.copyWith(
                    fontSize: fontSize, color: Colors.white),
                textAlign: TextAlign.center,
              )),
        ),
        Visibility(
          visible: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
              ? false
              : transitionColor < 1
                  ? false
                  : true,
          child: TextButton(
              style: ButtonStyle(
                splashFactory: NoSplash.splashFactory,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/contacto');
              },
              child: Text(
                'Contacto',
                style: headlineTextStyle.copyWith(
                    fontSize: fontSize, color: Colors.white),
                textAlign: TextAlign.center,
              )),
        ),
        Visibility(
          visible: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
              ? false
              : transitionColor < 1
                  ? false
                  : true,
          child: TextButton(
              style: ButtonStyle(
                splashFactory: NoSplash.splashFactory,
                overlayColor: MaterialStateProperty.all(Colors.transparent),
              ),
              onPressed: () {
                Navigator.pushNamed(context, '/ayuda');
              },
              child: Text(
                'Ayuda',
                style: headlineTextStyle.copyWith(
                    fontSize: fontSize, color: Colors.white),
                textAlign: TextAlign.center,
              )),
        ),
        Visibility(
          visible: ResponsiveWrapper.of(context).isSmallerThan("MOBILE_LARGE")
              ? false
              : transitionColor < 1
                  ? false
                  : true,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
            child: TextButton(
                style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0))),
                  backgroundColor: MaterialStateProperty.all(Colors.white),
                  splashFactory: NoSplash.splashFactory,
                  overlayColor:
                      MaterialStateProperty.all(Colors.black.withOpacity(0.1)),
                ),
                onPressed: () {
                  setState(() {
                    widget.scrollController
                        .scrollToItem(1, center: true, animate: true);
                  });
                },
                child: Text(
                  'Descargar APP',
                  style: headlineTextStyle.copyWith(
                      fontSize: fontSize,
                      color: primary,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                )),
          ),
        ),
      ],
    );
  }
}
