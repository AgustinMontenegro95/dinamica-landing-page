import 'package:flutter/material.dart';
import 'package:dinamica_landing_page/ui/contact/contact_page.dart';
import 'package:dinamica_landing_page/ui/help/help_page.dart';
import 'package:dinamica_landing_page/ui/home/home_page.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomePage(),
  '/ayuda': (context) => const HelpPage(),
  '/contacto': (context) => const ContactPage(),
};
