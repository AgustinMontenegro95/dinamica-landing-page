import 'package:animate_do/animate_do.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';

class FrequentQuestions extends StatelessWidget {
  const FrequentQuestions({super.key});

  @override
  Widget build(BuildContext context) {
    //styles
    TextStyle titleStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 25);
    TextStyle subtitleStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
    TextStyle textStyle = const TextStyle(fontSize: 20);
    TextStyle itemStyle =
        const TextStyle(fontWeight: FontWeight.bold, fontSize: 22);
    TextStyle linkStyle = const TextStyle(
        fontWeight: FontWeight.bold, fontSize: 20, color: Colors.blue);

    //textAlign
    TextAlign textAlign = ResponsiveWrapper.of(context).isSmallerThan(TABLET)
        ? TextAlign.start
        : TextAlign.justify;

    //widths
    double width = 0.85;

    return Theme(
      data: Theme.of(context).copyWith(
          dividerColor: Colors.transparent,
          hoverColor: Colors.transparent,
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent),
      child: FadeInLeft(
        child: Column(
          children: [
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Ingresar dinero', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.add_circle_outline_outlined,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '\n¿Cómo ingresar efectivo?',
                            style: subtitleStyle),
                        TextSpan(
                          text:
                              '\n\nEs sencillo y dinámico. Solo tenés que acercarte a uno de los locales habilitados de DINÁMICA, Pago Fácil o Rapipago y seguí los siguientes pasos:',
                          style: textStyle,
                        ),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                          text:
                              'Acércate al cajero e infórmale que queres ingresar dinero en DINÁMICA.',
                          style: textStyle,
                        ),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Informá tu número de DNI y lo que queres ingresar.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text: 'Entregá el efectivo y ¡Listo!',
                            style: textStyle),
                        //
                        TextSpan(
                            text: '\n\n\n¿Cuándo se acredita el dinero?',
                            style: subtitleStyle),
                        TextSpan(
                          text:
                              '\n\nSe acredita inmediatamente pero en ciertas situaciones puede demorar hasta 2 horas.\n\n¿Aún tenés dudas? Mirá este ',
                          style: textStyle,
                        ),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.', style: textStyle),
                        //
                        TextSpan(
                            text:
                                '\n\n\n¿Cómo ingresar dinero a través de una transferencia bancaria?',
                            style: subtitleStyle),
                        TextSpan(
                          text:
                              '\n\nPara ingresar dinero a través de una transferencia, podés hacerlo desde el Home Banking de tu Banco. Para eso, seguí estos pasos:',
                          style: textStyle,
                        ),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Abrí el Home Banking  de tu cuenta bancaria.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text: 'Busca la opción Pago de Servicios.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text: 'Seleccioná DINÁMICA.', style: textStyle),
                        TextSpan(text: '\n      4. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Completa con tu DNI, el importe a transferir y ¡Listo!',
                            style: textStyle),
                        //
                        TextSpan(
                            text: '\n\n\n¿Tiene costo el ingreso de dinero?',
                            style: subtitleStyle),
                        TextSpan(
                            text: '\n\nGratis (*): ',
                            style: textStyle.copyWith(
                                fontWeight: FontWeight.bold)),
                        TextSpan(
                          text:
                              'al ingresar dinero, ya sea mediante una transferencia o efectivo, según el medio de pago elegido y la cantidad que ingreses, tendrás un importe sin cargo por mes y, en caso de excederte, deberás abonar un determinado costo. Estos costos podrás verlos en ',
                          style: textStyle,
                        ),
                        TextSpan(
                          text: 'nuestra web',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(
                          text: '.',
                          style: textStyle,
                        ),
                        TextSpan(
                            text: '\n\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.\n', style: textStyle),
                      ],
                    ),
                  ),
                )
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Retiro Efectivo', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.remove_circle_outline_outlined,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '\nPodés extraer efectivo en todas las sucursales del país de Pago Fácil y en las sucursales de DINÁMICA.',
                          style: subtitleStyle,
                        ),
                        TextSpan(
                            text:
                                '\n\nPara hacerlo, seguí los siguientes pasos:',
                            style: textStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Ingresá a la App de DINÁMICA y seleccioná “Retirar efectivo”.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text: 'Elegí de donde retirarás el efectivo.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Ingresá el importe que deseas retirar. Se va a generar un código que va a identificar tu retiro.',
                            style: textStyle),
                        TextSpan(text: '\n      4. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Acércate al cajero de la sucursal del medio de pago elegido con el código generado y tu DNI. Al mostrárselos, te entregarán el dinero.',
                            style: textStyle),
                        TextSpan(text: '\n      5. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Recordá pedir siempre el comprobante de la operación, y contar tu dinero en efectivo antes de retirarte del local.',
                            style: textStyle),
                        //
                        TextSpan(
                            text: '\n\n\n¿Tiene costo el retiro de efectivo?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nDependiendo de dónde necesites efectuar el retiro, tendrás o no un determinado cargo. Por eso, para poder extraer es necesario que tengas disponible el importe que querés retirar, más el cargo.',
                            style: textStyle),
                        TextSpan(
                            text: '\n\nEstos costos podrás verlos en ',
                            style: textStyle),
                        TextSpan(
                          text: 'nuestra web.',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(
                            text: '\n\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.\n', style: textStyle),
                        //
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Transferir Dinero', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.monetization_on_outlined,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                          text: '\n¿Cómo transfiero el dinero de mi cuenta?',
                          style: subtitleStyle,
                        ),
                        TextSpan(
                            text:
                                '\n\nSiempre que tengas dinero disponible, podés transferir a cuentas de DINÁMICA, cuentas bancarias y de otras billeteras virtuales, deben ser de Argentina y en pesos.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nSi querés transferir a una cuenta de DINÁMICA:',
                            style: textStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Seleccioná cualquier contacto de tu agenda que tenga DINÁMICA.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Ingresá el importe, luego el motivo y presiona Transferir.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text: 'Avisa a tu contacto que le transferiste. ',
                            style: textStyle),
                        //
                        TextSpan(
                            text:
                                '\n\nSi querés transferir a una cuenta Bancaria o a una billetera virtual:',
                            style: textStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Selección el destinatario de tu agenda o ingresa un nuevo destinatario mediante su CBU, CVU o alias.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Ingresá el importe, luego el motivo y presiona Transferir.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text: 'Avisa a tu contacto que le transferiste. ',
                            style: textStyle),
                        //
                        TextSpan(
                            text: '\n\n\n¿Cuánto cuesta transferir?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nTodas tus transferencias de tu billetera a otras cuentas DINÁMICA, no pagás cargos.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nSi necesitas mandar dinero a cuentas bancarias o billeteras virtuales que no sean de DINÁMICA, se aplicará un cargo al importe de la transacción. Estos costos podrás verlos en ',
                            style: textStyle),
                        TextSpan(
                          text: 'nuestra web',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(
                            text:
                                '. Por eso, para poder transferir es necesario que tengas disponible el importe que querés enviar, más el cargo.',
                            style: textStyle),
                        //
                        TextSpan(
                            text:
                                '\n\n\n¿Cuál es el límite diario para transferir?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nTodas tus transferencias entre cuentas DINÁMICA, no tendrán límites.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nSi necesitas transferir a otras cuentas bancarias o billeteras virtuales que no sean de DINÁMICA, tendrás un límite diario determinado el cual lo puedes ver al momento de determinar la transferencia.',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.\n', style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Adelanto de efectivo', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.attach_money_outlined,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text:
                                '\nSolicita adelanto en efectivo en un instante.',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nArmá tu préstamo con acreditación inmediata en tu cuenta siguiendo los siguientes pasos:',
                            style: textStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'En tu App DINÁMICA, selecciona “Adelanto de efectivo”.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text: 'Coloca el importe que necesitas. ',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text: 'Elegí en cuantas cuotas queres pagarlo.',
                            style: textStyle),
                        TextSpan(text: '\n      4. ', style: itemStyle),
                        TextSpan(
                            text:
                                'A continuación, verás un resumen del adelanto. Si estás de acuerdo, presioná “Constituir Préstamo” y ¡Listo!',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\nEl adelanto de efectivo lo verás acreditado inmediatamente.',
                            style: textStyle),
                        //
                        TextSpan(
                            text:
                                '\n\n\n¿Cómo se acredita mi Adelanto de efectivo?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nUna vez que sacas tu adelanto en efectivo, el dinero se te acredita al instante en tu cuenta de DINÁMICA y tendrás el importe total que solicitaste. Podrás utilizar el adelanto para lo que quieras.',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.\n', style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Margen', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.price_change_outlined,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text:
                                '\nLos Márgenes son los límites de tu línea de crédito con indicación de cuotas que DINÁMICA te podría prestar para hacer compras. ',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nCada vez que realizas un pago de tus cuotas, podrás recuperar parte de tu límite disponible para seguir comprando.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nSiempre estamos evaluando el uso de tu línea de crédito. Recordá que pagando en término tus cuotas, nos permite generar un aumento de límite de crédito.',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.\n', style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Vencimientos', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.format_list_numbered_outlined,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text:
                                '\nEn Vencimientos podrás observar las cuotas de tus consumos discriminadas por mes. Las compras que efectúas a crédito vencen siempre los días 20 de cada mes. Al seleccionar el mes que deseas abonar, podrás ver las cuotas que lo componen. ',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n\n¿Cómo pago las cuotas?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nPodés pagar todas tus cuotas ingresando a la sección Vencimientos. Una vez que estés ahí, seleccioná las cuotas a pagar y lo harás aplicando el dinero disponible de tu billetera. Una vez que realices tu pago, no hará falta que nos avises y podrás encontrar toda la información de tu comprobante de pago en la sección movimientos.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\n\n¿Debo recordar pagar mis vencimientos aunque tenga dinero en mi cuenta?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nSi tenés una deuda con DINÁMICA y hay dinero suficiente en tu cuenta, lo debitaremos automáticamente al momento de tu fecha de vencimiento. ',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\n\n¿Qué pasa si no tengo dinero suficiente en mi cuenta?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nSi no tenés dinero suficiente para cubrir el total de tus vencimientos del mes, debitaremos lo que tengas disponible para reducir tu deuda. El saldo restante adeudado, deberás ingresarlo por los diferentes medios de cobro de DINÁMICA para cubrir tus deudas vencidas.',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n\n¿Puedo anticipar cuotas?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nSí, siempre vas a poder adelantarte a las fechas de vencimiento de tus créditos y pagar las cuotas con el dinero de tu cuenta.',
                            style: textStyle),
                        TextSpan(
                            text: '\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.\n', style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Perfil: datos personales', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.account_circle_outlined,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '\nActualizá tus datos laborales.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nTené siempre actualizada la información de tus datos laborales, lo que permite una mejor calificación en tu límite de crédito.\n',
                            style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Perfil: Datos comerciales (Comercios)',
                  style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.storefront_sharp,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text:
                                '\n¿Cuáles son las comisiones por cobrar con DINÁMICA?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nPor cada cobro recibido con las diferentes herramientas que te brinda DINÁMICA pagás una comisión que depende de:',
                            style: textStyle),
                        TextSpan(text: '\n      • ', style: itemStyle),
                        TextSpan(
                            text:
                                'El medio de pago que use tu cliente durante la compra.',
                            style: textStyle),
                        TextSpan(text: '\n      • ', style: itemStyle),
                        TextSpan(
                            text:
                                'El tiempo de acreditación para tener tu dinero disponible. ',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nEs por esto que podés configurar las comisiones y los plazos para tener tu dinero disponible desde Perfil en la sección “Datos comerciales”.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nRecordá que a las comisiones por ventas siempre se le suma el IVA. En el caso del método tradicional, además de las comisiones, el comercio debe abonar el cargo operativo. También es posible que se apliquen retenciones impositivas en tus cobros dependiendo de tu condición fiscal. Estas retenciones podés usarlas como crédito fiscal en tus declaraciones.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\n\n¿Cómo puedo elegir las comisiones y plazos de cobro?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nDINÁMICA te permite elegir cuando y como cobrar. Para ello, seguí los siguientes pasos:',
                            style: textStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text: 'Ingresá en la App de DINÁMICA.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text: 'En el menú de opciones buscá Perfil.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text: 'Ingresá en la sección datos comerciales.',
                            style: textStyle),
                        TextSpan(text: '\n      4. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Elegí el método de venta que deseas configurar.',
                            style: textStyle),
                        TextSpan(text: '\n      5. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Decidí el plazo y comisión más conveniente para tu negocio y ¡Listo!\n',
                            style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Cobrar con QR', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.qr_code_scanner_outlined,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '\n¿Cómo cobrar con QR desde la App?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nPara hacer una venta con un código QR desde la App de DINÁMICA seguí estos pasos:',
                            style: textStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text: 'Ingresá en la opción “Cobrar con QR”.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Introducí el monto que quieres cobrar y presioná continuar.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Mostrá a tu cliente el código QR generado que aparece en la pantalla.',
                            style: textStyle),
                        TextSpan(text: '\n      4. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Esperá que tus clientes escaneen el código y elijan su medio de pago.',
                            style: textStyle),
                        TextSpan(text: '\n      5. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Luego recibirás la confirmación del pago y ¡Listo!',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nTus clientes también pueden pagarte escaneando tú QR de DINÁMICA si tenés impresa la etiqueta genérica. ',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nEl estado del pago se muestra automáticamente cuando tus clientes terminen la compra. También podés revisar los detalles de la operación en la sección Movimientos de la App. ',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.', style: textStyle),
                        TextSpan(
                            text: '\n\n\n¿Cómo cobrar con un QR impreso?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\nPara poder hacer una venta con un código QR impreso, previamente debes imprimir el QR genérico de tu comercio accediendo desde la web en la sección respectiva. Este QR impreso te servirá para hacer todas tus ventas. Dependiendo del tipo de negocio que tengas, tenés dos opciones:',
                            style: textStyle),
                        TextSpan(
                            text: '\n\nVenta QR con importe definido',
                            style: textStyle.copyWith(
                                decoration: TextDecoration.underline)),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Ingresá en la sección Cobrar con código QR en la App o en la página web.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Definí el importe de la venta que quieres cobrar.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Avisá a tu cliente que lea el código QR con su celular y pague.',
                            style: textStyle),
                        TextSpan(text: '\n      4. ', style: itemStyle),
                        TextSpan(
                            text:
                                '¡Listo! Automáticamente verás la confirmación del cobro. ',
                            style: textStyle),
                        TextSpan(
                            text: '\n\nVenta QR con importe sin definir',
                            style: textStyle.copyWith(
                                decoration: TextDecoration.underline)),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Pedí a tus clientes que lean el código QR  con su celular ',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Indícales a tu cliente el importe de compra a pagar.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text:
                                '¡Listo! Automáticamente verás la confirmación del cobro.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nTambién podés revisar los detalles de la operación en la sección Movimientos de la App. ',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.\n', style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Cobrar con link de pago', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.link_outlined,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '\n¿Cómo cobrar con link de pago?',
                            style: subtitleStyle),
                        TextSpan(
                            text: '\n\nSigue los siguientes pasos:',
                            style: textStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Ingresá en la sección Cobrar con link de pago en la App.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Completa el importe a cobrar y el motivo o descripción.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Compartí el link con tus clientes o publicado donde quieras.',
                            style: textStyle),
                        TextSpan(text: '\n      4. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Y ¡Listo! Una vez que tu cliente pague, automáticamente verás la confirmación del cobro.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nTus clientes siempre podrán elegir como pagar su compra, ya sea con dinero en cuenta, en cuotas o con tarjeta pero esto no modifica tus comisiones.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\nEn caso de haber colocado mal el importe o motivo, podrás cancelarlo presionando “cancelar cobro” y generar un nuevo link.',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.\n', style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Pagar con QR', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.qr_code_scanner_rounded,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '\n¿Cómo pagar con QR?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nPagar con QR es sencillo, rápido y seguro. Para ello, seguí los siguientes pasos:',
                            style: textStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Entrá a la App de DINÁMICA e ingresá a “Pagar con QR”.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Escaneá el código QR del local, si es necesario ingresá el importe de compra.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text: 'Elegí el medio de pago y pagá.',
                            style: textStyle),
                        TextSpan(text: '\n      4. ', style: itemStyle),
                        TextSpan(
                            text: 'Avisá al vendedor que pagaste, y ¡Listo!',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.\n', style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title: Text('Pagar con link de pago', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.link, size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text: '\n¿Cómo pagar con link de pago?',
                            style: subtitleStyle),
                        TextSpan(
                            text:
                                '\n\nPagar con link de pago es sencillo, rápido y seguro. Para ello, seguí los siguientes pasos:',
                            style: textStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Ingresa al link de pago, eligiendo abrir dicho vinculo con la aplicación de DINÁMICA. En caso de que se inicie el navegador ver "Error al ingresar al link de pago".',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text: 'Ingresa a la cuenta.', style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text: 'Selecciona la forma de pago',
                            style: textStyle),
                        TextSpan(text: '\n      4. ', style: itemStyle),
                        TextSpan(
                            text: 'Confirma el pago, y ¡Listo!',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n¿Aún tenés dudas? Mirá este ',
                            style: textStyle),
                        TextSpan(
                          text: 'tutorial',
                          style: linkStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              // navigate to desired screen
                            },
                        ),
                        TextSpan(text: '.\n', style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
            ExpansionTile(
              title:
                  Text('Error al ingresar al link de pago', style: titleStyle),
              tilePadding: const EdgeInsets.symmetric(horizontal: 25),
              leading: const Icon(Icons.error_outline,
                  size: 25, color: Colors.black),
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width * width,
                  child: Text.rich(
                    textAlign: textAlign,
                    TextSpan(
                      children: [
                        TextSpan(
                            text:
                                '\nSi tienes más de una app que cumple la misma función, puedes seleccionar la que quieras usar de forma predeterminada.  Por ejemplo, si tienes varias apps de edición, elige cuál usar para abrir una foto.',
                            style: textStyle),
                        TextSpan(
                            text: '\n\n¿Cómo establecer apps predeterminadas?',
                            style: subtitleStyle),
                        TextSpan(
                            text: '\n\nElige una cuando se te solicite.',
                            style: textStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Si se te pregunta qué app deseas usar, presiona la que quieras utilizar.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Elige con qué frecuencia quieres usar esa app para realizar la acción: Siempre o Solo esta vez.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Ya no se preguntará qué app quieres usar para realizar esa acción. Para que se te vuelva a preguntar, debes borrar ese valor predeterminado.',
                            style: textStyle),
                        TextSpan(
                            text:
                                '\n\n¿Cómo modificar app predeterminada de vínculo de apertura?',
                            style: subtitleStyle),
                        TextSpan(text: '\n      1. ', style: itemStyle),
                        TextSpan(
                            text: 'Abre la app de Configuración del teléfono.',
                            style: textStyle),
                        TextSpan(text: '\n      2. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Presiona Apps y, luego, selecciona la app DINÁMICA.',
                            style: textStyle),
                        TextSpan(text: '\n      3. ', style: itemStyle),
                        TextSpan(
                            text:
                                'En informacion de aplicación, presiona "Abrir (predeterminado)", que en ocaciones se puede encontrar en opciones avanzadas.',
                            style: textStyle),
                        TextSpan(text: '\n      4. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Presiona "Abrir vínculos admitidos" y selecciona la opción "Abrir en esta aplicación".',
                            style: textStyle),
                        TextSpan(text: '\n      5. ', style: itemStyle),
                        TextSpan(
                            text:
                                'Vuelve a ingresar al link de pago y ¡Listo!\n',
                            style: textStyle),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Divider(color: Colors.grey.withOpacity(0.5)),
          ],
        ),
      ),
    );
  }
}
