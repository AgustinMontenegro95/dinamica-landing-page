import 'package:flutter/material.dart';
import 'package:sigest_landing_page/constants/components.dart';

class ItemRowColunm extends StatelessWidget {
  const ItemRowColunm({
    Key? key,
    required this.image,
    required this.title,
    required this.bodyText,
  }) : super(key: key);
  final String image;
  final String title;
  final String bodyText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          image,
          height: 150,
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Text(title,
              style: headlineTextStyle, textAlign: TextAlign.center),
        ),
        Text(bodyText,
            style: headlineSecondaryTextStyle.copyWith(fontSize: 16),
            textAlign: TextAlign.center),
      ],
    );
  }
}
