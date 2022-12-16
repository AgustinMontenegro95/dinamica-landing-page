import 'dart:math';

import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:scroll_pos/scroll_pos.dart';

import '../../constants/components.dart';

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
  static const double EMPTY_SPACE = 10.0;

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
      if (widget.scrollController.offset > EMPTY_SPACE && isScrolledToTop) {
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
      title: Visibility(
        visible: transitionColor < 1 ? false : true,
        child: Image.asset(
          'assets/images/dinamica/Dinamica.png',
          height: 40,
        ),
      ),
      actions: [
        Visibility(
          visible: transitionColor < 1 ? false : true,
          child: TextButton(
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
          visible: transitionColor < 1 ? false : true,
          child: TextButton(
              onPressed: () {
                setState(() {
                  widget.scrollController
                      .scrollToItem(2, center: true, animate: true);
                });
              },
              child: Text(
                'Contacto',
                style: headlineTextStyle.copyWith(
                    fontSize: fontSize, color: Colors.white),
                textAlign: TextAlign.center,
              )),
        ),
        Visibility(
          visible: transitionColor < 1 ? false : true,
          child: Container(
            margin: const EdgeInsets.symmetric(vertical: 7, horizontal: 5),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 5),
                borderRadius: BorderRadius.circular(20),
                color: Colors.white),
            child: TextButton(
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
