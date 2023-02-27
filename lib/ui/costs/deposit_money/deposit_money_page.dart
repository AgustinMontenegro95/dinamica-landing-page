import 'package:dinamica_landing_page/domain/blocs/deposit_money/deposit_money_bloc.dart';
import 'package:dinamica_landing_page/ui/costs/deposit_money/widgets/cost.dart';
import 'package:dinamica_landing_page/ui/costs/deposit_money/widgets/title_column.dart';
import 'package:dinamica_landing_page/ui/costs/deposit_money/widgets/value_column.dart';
import 'package:dinamica_landing_page/ui/costs/deposit_money/widgets/zero_cost.dart';
import 'package:dinamica_landing_page/ui/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DepositMoneyPage extends StatefulWidget {
  const DepositMoneyPage({super.key});

  @override
  State<DepositMoneyPage> createState() => _DepositMoneyPageState();
}

class _DepositMoneyPageState extends State<DepositMoneyPage> {
  @override
  void initState() {
    context.read<DepositMoneyBloc>().add(const DepositMoneyEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DepositMoneyBloc, DepositMoneyState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const Text("Initial"),
          loading: () => const Loading(),
          loaded: (placesModelDM) {
            //definir heigth y weight
            double heightColumn = MediaQuery.of(context).size.height * 0.11;
            double widthTitleColumn = MediaQuery.of(context).size.width * 0.2;
            double widthValueColumn = MediaQuery.of(context).size.width * 0.1;
            return Scaffold(
              appBar: AppBar(
                title: const Text("Ingreso de dinero"),
              ),
              body: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 20),
                    /* Text("Disfrutá sin costos ocultos"),
                    Text("No tenemos letra chica ni costos ocultos."),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child:
                            Image.asset("assets/images/cost.png", width: 650)), */
                    const Cost(),
                    //SizedBox(height: 20),
                    const ZeroCost(),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Column(
                          children: [
                            TitleColumn(
                                title: "Nombre",
                                description: "",
                                heigth: heightColumn,
                                width: widthTitleColumn),
                            TitleColumn(
                                title:
                                    "Importe mínimo permitido por ingreso de fondos",
                                description: "",
                                heigth: heightColumn,
                                width: widthTitleColumn),
                            TitleColumn(
                                title:
                                    "Importe maximo permitido por ingreso de fondos",
                                description: "",
                                heigth: heightColumn,
                                width: widthTitleColumn),
                            TitleColumn(
                                title:
                                    "Importe minimo a cobrar por ingreso de fondos. Aplicado el porcentaje, si el importe resulta menor a este campo, se cobra lo que este campo indica.",
                                description: "",
                                heigth: heightColumn,
                                width: widthTitleColumn),
                            TitleColumn(
                                title:
                                    "Porcentaje a cobrar por ingreso de fondos",
                                description: "",
                                heigth: heightColumn,
                                width: widthTitleColumn),
                            TitleColumn(
                                title:
                                    "Importe mensual por debajo del cual NO se cobra comisiones",
                                description: "",
                                heigth: heightColumn,
                                width: widthTitleColumn),
                            TitleColumn(
                                title:
                                    "Cantidad mensual de depositos sin costo",
                                description: "",
                                heigth: heightColumn,
                                width: widthTitleColumn),
                          ],
                        ),
                        for (int i = 0; i < placesModelDM!.places.length; i++)
                          Column(
                            children: [
                              ValueColumn(
                                  value: placesModelDM.places[i].name,
                                  heigth: heightColumn,
                                  width: widthValueColumn),
                              ValueColumn(
                                  value: placesModelDM
                                      .places[i].minDepositAmount
                                      .toString(),
                                  heigth: heightColumn,
                                  width: widthValueColumn),
                              ValueColumn(
                                  value: placesModelDM
                                      .places[i].maxDepositAmount
                                      .toString(),
                                  heigth: heightColumn,
                                  width: widthValueColumn),
                              ValueColumn(
                                  value: placesModelDM
                                      .places[i].minDepositCommision
                                      .toString(),
                                  heigth: heightColumn,
                                  width: widthValueColumn),
                              ValueColumn(
                                  value: placesModelDM
                                      .places[i].depositCommisionPercent
                                      .toString(),
                                  heigth: heightColumn,
                                  width: widthValueColumn),
                              ValueColumn(
                                  value: placesModelDM
                                      .places[i].maxDepositCommisionZero
                                      .toString(),
                                  heigth: heightColumn,
                                  width: widthValueColumn),
                              ValueColumn(
                                  value: placesModelDM.places[i].maxDepositCount
                                      .toString(),
                                  heigth: heightColumn,
                                  width: widthValueColumn),
                            ],
                          ),
                      ],
                    ),
                    const SizedBox(height: 50),
                  ],
                ),
              ),
            );
          },
          orElse: () => const Loading(),
        );
      },
    );
  }
}
