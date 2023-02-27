import 'package:dinamica_landing_page/domain/blocs/transfer_money/transfer_money_bloc.dart';
import 'package:dinamica_landing_page/ui/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TransferMoneyPage extends StatefulWidget {
  const TransferMoneyPage({super.key});

  @override
  State<TransferMoneyPage> createState() => _TransferMoneyPageState();
}

class _TransferMoneyPageState extends State<TransferMoneyPage> {
  @override
  void initState() {
    context.read<TransferMoneyBloc>().add(const TransferMoneyEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransferMoneyBloc, TransferMoneyState>(
      builder: (context, state) {
        return state.maybeWhen(
          initial: () => const Text("initial"),
          loading: () => const Loading(),
          loaded: (transferMoneyModel) {
            return Scaffold(
              appBar: AppBar(
                title: const Text("Transferencia de dinero"),
              ),
              body: SingleChildScrollView(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(height: 50),
                        const Text(
                          "Transferencia DINÁMICA",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                                "Transf.Dinamica Costo Unitario minimo por operacion"),
                            const SizedBox(width: 50),
                            Text(transferMoneyModel!.TRD_COSTO_MINIMO
                                .toString()),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          color: Colors.red.shade200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                  "Transf.Dinamica Porcentaje a aplicar sobre los excedentes al maximo"),
                              const SizedBox(width: 50),
                              Text(
                                  transferMoneyModel.TRD_PORCENTAJE.toString()),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                                "Transf.Dinamica Monto maximo a transferir en una sola operacion sin costo"),
                            const SizedBox(width: 50),
                            Text(transferMoneyModel.TRD_SC_1MAX.toString()),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          color: Colors.red.shade200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                  "Transf.Dinamica Cantidad de transferencias mensuales sin costo"),
                              const SizedBox(width: 50),
                              Text(transferMoneyModel.TRD_SC_MES_MAX_CANT
                                  .toString()),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                                "Transf.Dinamica Monto maximo a transferir en operaciones mensuales sin costo"),
                            const SizedBox(width: 50),
                            Text(transferMoneyModel.TRD_SC_MES_MAX_IMPO
                                .toString()),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(width: 50),
                    Column(
                      children: [
                        const SizedBox(height: 50),
                        const Text(
                          "Transferencia externa",
                          style: TextStyle(
                              color: Colors.red, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(height: 20),
                        Container(
                          color: Colors.red.shade200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                  "Transf.Externa Costo Unitario minimo por operacion"),
                              const SizedBox(width: 50),
                              Text(transferMoneyModel.TRE_COSTO_MINIMO
                                  .toString()),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                                "Transf.Externa Porcentaje a aplicar sobre los excedentes al maximo"),
                            const SizedBox(width: 50),
                            Text(transferMoneyModel.TRE_PORCENTAJE.toString()),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          color: Colors.red.shade200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                  "Transf.Externa Monto maximo a transferir en una sola operacion sin costo"),
                              const SizedBox(width: 50),
                              Text(transferMoneyModel.TRE_SC_1MAX.toString()),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text(
                                "Transf.Externa Cantidad de transferencias mensuales sin costo"),
                            const SizedBox(width: 50),
                            Text(transferMoneyModel.TRE_SC_MES_MAX_CANT
                                .toString()),
                          ],
                        ),
                        const SizedBox(height: 20),
                        Container(
                          color: Colors.red.shade200,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                  "Transf.Externa Monto maximo a transferir en operaciones mensuales sin costo"),
                              const SizedBox(width: 50),
                              Text(transferMoneyModel.TRE_SC_MES_MAX_IMPO
                                  .toString()),
                            ],
                          ),
                        ),
                      ],
                    )
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
