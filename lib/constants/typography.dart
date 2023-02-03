import 'package:flutter/material.dart';

import 'components.dart';

const String fontFamily = "Google Sans";

// Simple
const TextStyle headlineTextStyle = TextStyle(
    fontSize: 44, color: textPrimary, height: 1.2, fontFamily: fontFamily);

const TextStyle headlineSecondaryTextStyle = TextStyle(
    fontSize: 28, color: textPrimary, height: 1.2, fontFamily: fontFamily);

const TextStyle bodyTextStyle = TextStyle(
    fontSize: 16, color: textPrimary, height: 1.5, fontFamily: "Roboto");

TextStyle bodyLinkTextStyle = bodyTextStyle.copyWith(color: primary);

const TextStyle buttonTextStyle = TextStyle(
    fontSize: 18, color: Colors.white, height: 1, fontFamily: "Roboto");

//animation textstyle
const TextStyle animationtextStyle = TextStyle(
  fontSize: 32.0,
  fontWeight: FontWeight.bold,
  color: Colors.white,
  shadows: <Shadow>[
    Shadow(offset: Offset(5.0, 5.0), blurRadius: 5.0, color: Colors.black),
  ],
);

//terms and conditions
TextStyle bodyTACTextStyle = const TextStyle(fontSize: 18);
TextStyle titleTACTextStyle =
    const TextStyle(fontSize: 22, fontWeight: FontWeight.bold);
