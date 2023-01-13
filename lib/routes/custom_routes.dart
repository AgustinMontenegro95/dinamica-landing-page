import 'package:dinamica_landing_page/presentation/Help/help_page.dart';
import 'package:flutter/material.dart';
import 'package:dinamica_landing_page/presentation/Home/home_page.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomePage(),
  '/ayuda': (context) => const HelpPage(),
};
