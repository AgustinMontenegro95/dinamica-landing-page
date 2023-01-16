import 'dart:convert';
import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart' as http;
import 'package:responsive_framework/responsive_framework.dart';
import 'package:string_validator/string_validator.dart';

class MessageForm extends StatefulWidget {
  const MessageForm({
    key,
  }) : super(key: key);

  @override
  State<MessageForm> createState() => _MessageFormState();
}

class _MessageFormState extends State<MessageForm> {
  //Controladores
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();
  final _telefonoController = TextEditingController();
  final _descripcionController = TextEditingController();

  //Focus
  late FocusNode focusNombre, focusEmail, focusTelefono, focusDescripcion;

  @override
  void initState() {
    focusNombre = FocusNode();
    focusEmail = FocusNode();
    focusTelefono = FocusNode();
    focusDescripcion = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    //Limpiando controladores
    _nombreController.dispose();
    _emailController.dispose();
    _telefonoController.dispose();
    _descripcionController.dispose();
    //Limpiando focos
    focusNombre.dispose();
    focusEmail.dispose();
    focusTelefono.dispose();
    focusDescripcion.dispose();

    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Wrap(
        spacing: 20.0 * 2.5,
        runSpacing: 20.0 * 1.5,
        children: [
          Theme(
            data: Theme.of(context).copyWith(colorScheme: textFieldColorScheme),
            child: TextFormField(
              controller: _nombreController,
              focusNode: focusNombre,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(focusEmail);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Debes ingresar tu nombre";
                }
                return null;
              },
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Nombre",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(colorScheme: textFieldColorScheme),
            child: TextFormField(
              controller: _emailController,
              focusNode: focusEmail,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(focusTelefono);
              },
              onChanged: (value) {},
              validator: (value) {
                return value != null && !EmailValidator.validate(value)
                    ? 'Debes ingresar un e-mail válido\n Ejemplo. xxxxx@yyyy.zzz'
                    : null;
              },
              decoration: const InputDecoration(
                labelText: "Correo electrónico",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(colorScheme: textFieldColorScheme),
            child: TextFormField(
              controller: _telefonoController,
              focusNode: focusTelefono,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(focusDescripcion);
              },
              validator: (value) {
                if (value!.isEmpty) {
                  return "Debes ingresar un número de teléfono";
                } else if (!isNumeric(value)) {
                  return "Debes ingresar un número de teléfono válido";
                }
                return null;
              },
              onChanged: (value) {},
              decoration: const InputDecoration(
                labelText: "Teléfono",
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Theme(
            data: Theme.of(context).copyWith(colorScheme: textFieldColorScheme),
            child: TextFormField(
              maxLines: 5,
              controller: _descripcionController,
              focusNode: focusDescripcion,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              onChanged: (value) {},
              validator: (value) {
                if (value!.isEmpty) {
                  return "Debes ingresar tu mensaje";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Mensaje",
                alignLabelWithHint: true,
                border: OutlineInputBorder(),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: Center(
              child: TextButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    http.Response response = await sendEmail(
                        name: _nombreController.text.trim(),
                        email: _emailController.text.trim(),
                        subject: "Consulta - pay-dinámica",
                        message: "      Email: ${_emailController.text.trim()}."
                            "     Teléfono: ${_telefonoController.text.trim()}."
                            "     Mensaje: ${_descripcionController.text.trim()}");
                    if (response.statusCode == 200) {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('CONTACTO',
                                      style: TextStyle(
                                          color: primary,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold)),
                                  Divider()
                                ],
                              ),
                              content: const Text(
                                  'Su mensaje fue enviado exitosamente, recibirá una respuesta a la brevedad. Gracias por comunicarte con nosotros, equipo de DINÁMICA.'),
                              actions: <Widget>[
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.hovered)) {
                                            return buttonPrimaryDark;
                                          }
                                          if (states.contains(
                                                  MaterialState.focused) ||
                                              states.contains(
                                                  MaterialState.pressed)) {
                                            return buttonPrimaryDarkPressed;
                                          }
                                          return primary;
                                        },
                                      ),
                                    ),
                                    child: const Text('Aceptar')),
                              ],
                            );
                          });
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text(
                                    'ERROR',
                                    style: TextStyle(
                                        color: primary,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Divider()
                                ],
                              ),
                              content: const Text(
                                  'Ocurrió un problema al intentar procesar la solicitud, por favor, intenta de nuevo.'),
                              actions: <Widget>[
                                ElevatedButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    style: ButtonStyle(
                                      overlayColor: MaterialStateProperty
                                          .resolveWith<Color>(
                                        (Set<MaterialState> states) {
                                          if (states.contains(
                                              MaterialState.hovered)) {
                                            return buttonPrimaryDark;
                                          }
                                          if (states.contains(
                                                  MaterialState.focused) ||
                                              states.contains(
                                                  MaterialState.pressed)) {
                                            return buttonPrimaryDarkPressed;
                                          }
                                          return primary;
                                        },
                                      ),
                                    ),
                                    child: const Text('Aceptar')),
                              ],
                            );
                          });
                    }
                    _nombreController.clear();
                    _emailController.clear();
                    _telefonoController.clear();
                    _descripcionController.clear();
                  } else {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return AlertDialog(
                            title: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'ERROR',
                                  style: TextStyle(
                                      color: primary,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                Divider()
                              ],
                            ),
                            content: const Text(
                                'Debes ingresar de forma correcta los campos solicitados para poder continuar.'),
                            actions: <Widget>[
                              ElevatedButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  style: ButtonStyle(
                                    overlayColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.hovered)) {
                                          return buttonPrimaryDark;
                                        }
                                        if (states.contains(
                                                MaterialState.focused) ||
                                            states.contains(
                                                MaterialState.pressed)) {
                                          return buttonPrimaryDarkPressed;
                                        }
                                        return primary;
                                      },
                                    ),
                                  ),
                                  child: const Text('Aceptar')),
                            ],
                          );
                        });
                  }
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(primary),
                  overlayColor: MaterialStateProperty.resolveWith<Color>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.hovered)) {
                        return buttonPrimaryDark;
                      }
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed)) {
                        return buttonPrimaryDarkPressed;
                      }
                      return primary;
                    },
                  ),
                  shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                    (Set<MaterialState> states) {
                      if (states.contains(MaterialState.focused) ||
                          states.contains(MaterialState.pressed)) {
                        return const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(10)));
                      }
                      return const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(10)));
                    },
                  ),
                  padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                      ResponsiveWrapper.of(context)
                              .isSmallerThan("MOBILE_LARGE")
                          ? const EdgeInsets.symmetric(
                              vertical: 15, horizontal: 30)
                          : const EdgeInsets.symmetric(
                              vertical: 25, horizontal: 50)),
                ),
                child: Text(
                  "Enviar consulta",
                  style: buttonTextStyle.copyWith(fontSize: 18),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<http.Response> sendEmail(
      {required String name,
      required String email,
      required String subject,
      required String message}) async {
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': 'service_3wi4ws3',
        'template_id': 'template_a4s0x8i',
        'user_id': 'AvujUN7rFt6EkKOA9',
        'template_params': {
          'user_name': name,
          'user_email': email,
          'user_subject': subject,
          'user_message': message,
        }
      }),
    );
    print(response.statusCode);
    return response;
  }
}
