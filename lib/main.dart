import 'package:dinamica_landing_page/constants/components.dart';
import 'package:dinamica_landing_page/domain/blocs/cash_withdrawal/cash_withdrawal_bloc.dart';
import 'package:dinamica_landing_page/domain/blocs/deposit_money/deposit_money_bloc.dart';
import 'package:dinamica_landing_page/domain/blocs/transfer_money/transfer_money_bloc.dart';
import 'package:dinamica_landing_page/domain/repositories/cash_withdrawal_repository.dart';
import 'package:dinamica_landing_page/domain/repositories/deposit_money_repository.dart';
import 'package:dinamica_landing_page/domain/repositories/trasnfer_money_repository.dart';
import 'package:dinamica_landing_page/routes/custom_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const Dinamica());
}

class Dinamica extends StatelessWidget {
  const Dinamica({super.key});

  MaterialColor getMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;

    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };

    return MaterialColor(color.value, shades);
  }

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => CashWithdrawalRepository(),
        ),
        RepositoryProvider(
          create: (context) => DepositMoneyRepository(),
        ),
        RepositoryProvider(
          create: (context) => TransferMoneyRepository(),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => CashWithdrawalBloc(
                cashWithdrawalRepository:
                    RepositoryProvider.of<CashWithdrawalRepository>(
                        context)) /* ..add(const CashWithdrawalEvent.get()) */,
          ),
          BlocProvider(
            create: (context) => DepositMoneyBloc(
                depositMoneyRepository:
                    RepositoryProvider.of<DepositMoneyRepository>(
                        context)) /* ..add(const DepositMoneyEvent.get()) */,
          ),
          BlocProvider(
            create: (context) => TransferMoneyBloc(
                transferMoneyRepository:
                    RepositoryProvider.of<TransferMoneyRepository>(
                        context)) /* ..add(const TransferMoneyEvent.get()) */,
          ),
        ],
        child: MaterialApp(
          title: "DINÁMICA",
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: getMaterialColor(primary)),
          builder: (context, child) {
            //FlutterNativeSplash.remove();
            return ResponsiveWrapper.builder(
                ClampingScrollWrapper.builder(context, child!),
                maxWidth: 1920,
                minWidth: 450,
                defaultScale: true,
                breakpoints: [
                  const ResponsiveBreakpoint.resize(450, name: MOBILE),
                  const ResponsiveBreakpoint.resize(600, name: "MOBILE_LARGE"),
                  const ResponsiveBreakpoint.autoScale(800, name: TABLET),
                  const ResponsiveBreakpoint.resize(1000, name: DESKTOP),
                  const ResponsiveBreakpoint.resize(1350,
                      name: "DESKTOP_LARGE"),
                  const ResponsiveBreakpoint.autoScale(1700,
                      name: "DESKTOP_XL"),
                  const ResponsiveBreakpoint.autoScale(2460, name: "4K"),
                ],
                background: Container(color: const Color(0xFFF5F5F5)));
          },
          initialRoute: '/',
          routes: customRoutes,
        ),
      ),
    );
  }
}
