import 'package:dinamica_landing_page/domain/blocs/cash_withdrawal/cash_withdrawal_bloc.dart';
import 'package:dinamica_landing_page/ui/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CashWithdrawalPage extends StatefulWidget {
  const CashWithdrawalPage({super.key});

  @override
  State<CashWithdrawalPage> createState() => _CashWithdrawalPageState();
}

class _CashWithdrawalPageState extends State<CashWithdrawalPage> {
  @override
  void initState() {
    context.read<CashWithdrawalBloc>().add(const CashWithdrawalEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CashWithdrawalBloc, CashWithdrawalState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const Text("Initial"),
          loading: () => const Loading(),
          loaded: (placesModelCM) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Retiro de efectivo"),
              ),
              body: Column(
                children: [
                  ListView.builder(
                    shrinkWrap: true,
                    itemCount: placesModelCM!.places.length,
                    itemBuilder: (context, index) {
                      return SingleChildScrollView(
                        child: Column(
                          children: [
                            const SizedBox(height: 30),
                            Text(
                              placesModelCM.places[index].name,
                              style: const TextStyle(color: Colors.red),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                    "Porcentaje a cobrar por extracción."),
                                const SizedBox(width: 50),
                                Text(placesModelCM
                                    .places[index].extractionCommisionPercent
                                    .toString()),
                              ],
                            ),
                            Container(
                              color: Colors.red.shade100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                      "Importe MÁXIMO permitido por extracción."),
                                  const SizedBox(width: 50),
                                  Text(placesModelCM
                                      .places[index].maxExtractionAmount
                                      .toString()),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                    "Importe MENSUAL por debajo del cual NO se cobran comisiones."),
                                const SizedBox(width: 50),
                                Text(placesModelCM
                                    .places[index].maxExtractionCommisionZero
                                    .toString()),
                              ],
                            ),
                            Container(
                              color: Colors.red.shade100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                      "Cantidad MENSUAL de extracciones sin costo"),
                                  const SizedBox(width: 50),
                                  Text(placesModelCM
                                      .places[index].maxExtractionCount
                                      .toString()),
                                ],
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text(
                                    "Importe mínimo permitido por extracción."),
                                const SizedBox(width: 50),
                                Text(placesModelCM
                                    .places[index].minExtractionAmount
                                    .toString()),
                              ],
                            ),
                            Container(
                              color: Colors.red.shade100,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text(
                                      "Importe mínimo a cobrar por extracción. Aplicado el porcentaje resulta menor a este importe, se aplica este importe como comisión."),
                                  const SizedBox(width: 50),
                                  Text(placesModelCM
                                      .places[index].minExtractionCommision
                                      .toString()),
                                ],
                              ),
                            ),
                            const Divider()
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            );
          },
          orElse: () => const Loading(),
        );
      },
    );
  }
}
