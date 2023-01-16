import 'package:flutter/material.dart';

const Color primary = Color.fromRGBO(234, 33, 46, 1);
const Color primaryLight = Color.fromARGB(255, 247, 248, 248);

const Color textPrimary = Color(0xFF4A4A4A);

const Color buttonPrimaryDark = Color(0xFF303c42);
const Color buttonPrimaryDarkPressed = Color(0xFF303c42);
const Color buttonPrimaryPressedOutline = Color.fromARGB(255, 96, 117, 128);

const Color buttonSecondDark = Color.fromARGB(255, 253, 253, 253);

const Color background = Color(0xFFF8F9FA);
const Color backgroundDark = Color(0xFF303c42);
const Color border = Color(0x20000000);

ColorScheme textFieldColorScheme = ColorScheme(
    brightness: Brightness.light,
    primary: Colors.grey.shade700,
    onPrimary: Colors.black,
    secondary: Colors.black,
    onSecondary: Colors.black,
    error: Colors.black,
    onError: Colors.black,
    background: background,
    onBackground: Colors.black,
    surface: Colors.black,
    onSurface: Colors.black);
