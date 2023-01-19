import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/material.dart';
import 'package:scroll_pos/scroll_pos.dart';

class MyDrawer extends StatefulWidget {
  final ScrollPosController? scrollController;

  const MyDrawer({super.key, this.scrollController});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Image.asset(
              'assets/images/dinamica/dinamica-height-red.png',
              width: MediaQuery.of(context).size.width * 0.7,
            ),
          ),
          Column(
            children: [
              space(context),
              TextButton(
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/');
                },
                child: Text(
                  'Inicio',
                  style: headlineTextStyle.copyWith(
                      fontSize: 25,
                      color: primary,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              space(context),
              TextButton(
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/contacto');
                },
                child: Text(
                  'Contacto',
                  style: headlineTextStyle.copyWith(
                      fontSize: 25,
                      color: primary,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              space(context),
              TextButton(
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context, '/ayuda');
                },
                child: Text(
                  'Ayuda',
                  style: headlineTextStyle.copyWith(
                      fontSize: 25,
                      color: primary,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              space(context),
              TextButton(
                style: ButtonStyle(
                  splashFactory: NoSplash.splashFactory,
                  overlayColor: MaterialStateProperty.all(Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  if (widget.scrollController != null) {
                    setState(() {
                      widget.scrollController!
                          .scrollToItem(1, center: true, animate: true);
                    });
                  } else {
                    Navigator.pushNamed(context, '/');
                  }
                },
                child: Text(
                  'Descargar APP',
                  style: headlineTextStyle.copyWith(
                      fontSize: 25,
                      color: primary,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
              ),
              space(context),
            ],
          ),
          Container(),
          Container(),
          Container(),
          Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(
                Icons.close,
                color: primary,
              ),
              iconSize: 40,
            ),
          ),
        ],
      ),
    );
  }

  Widget space(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width * 0.7,
      child: const Divider(),
    );
  }
}
