import 'package:flutter/material.dart';
import 'package:dinamica_landing_page/ui/costs/cash_withdrawal/cash_withdrawal_page.dart';
import 'package:dinamica_landing_page/ui/costs/costs_page.dart';
import 'package:dinamica_landing_page/ui/costs/deposit_money/deposit_money_page.dart';
import 'package:dinamica_landing_page/ui/costs/transfer_money/transfer_money_page.dart';
import 'package:dinamica_landing_page/ui/help/help_page.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions_discounts_and_bonuses_program/terms_and_conditions_discounts_and_bonuses_program_page.dart';
import 'package:dinamica_landing_page/ui/terms_policies/conditions_grating_loans/conditions_grating_loans_page.dart';
import 'package:dinamica_landing_page/ui/terms_policies/privacy_policies/privacy_policies_page.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions/terms_and_conditions_page.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions_funds_advances/terms_and_conditions_funds_advances_page.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions_payment/terms_and_condition_payment_page.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_and_conditions_use_qr_code/terms_and_conditions_use_qr_code_page.dart';
import 'package:dinamica_landing_page/ui/terms_policies/terms_policies_page.dart';
import 'package:dinamica_landing_page/ui/contact/contact_page.dart';
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
  '/terminos-y-condiciones-de-uso-de-dinamica-cobros': (context) =>
      const TermsAndConditionsPaymentPage(),
  '/terminos-y-condiciones-de-uso-de-adelanto-de-fondos': (context) =>
      const TermsAndConditionsFundsAdvancesPage(),
  '/terminos-y-condiciones-de-uso-de-codigo-qr': (context) =>
      const TermsAndConditionsUseQrCodePage(),
  '/terminos-y-condiciones-del-programa-de-descuentos-y-bonificaciones':
      (context) => const TermsAndConditionsDiscountsAndBonusesProgramPage(),
  '/costos': (context) => const CostsPage(),
  '/ingresar-dinero': (context) => const DepositMoneyPage(),
  '/retiro-efectivo': (context) => const CashWithdrawalPage(),
  '/transferir-dinero': (context) => const TransferMoneyPage(),
};
