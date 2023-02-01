import 'package:dinamica_landing_page/ui/conditions_grating_loans/conditions_grating_loans_page.dart';
import 'package:dinamica_landing_page/ui/terms_and_conditions/terms_and_conditions_page.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_policies_page.dart';
import 'package:dinamica_landing_page/ui/privacy_policies/privacy_policies_page.dart';
import 'package:flutter/material.dart';
import 'package:dinamica_landing_page/ui/contact/contact_page.dart';
import 'package:dinamica_landing_page/ui/help/help_page.dart';
import 'package:dinamica_landing_page/ui/home/home_page.dart';

var customRoutes = <String, WidgetBuilder>{
  '/': (context) => const HomePage(),
  '/ayuda': (context) => const HelpPage(),
  '/contacto': (context) => const ContactPage(),
  '/terminos-y-politicas': (context) => const TermsPoliciesPage(),
  '/politicas-de-privacidad': (context) => const PrivacyPoliciesPage(),
  '/terminos-y-condiciones-de-uso': (context) => const TermsAndConditionsPage(),
  '/condiciones-de-otorgamiento-de-prestamos': (context) =>
      const ConditionsGratingLoansPage(),
};
