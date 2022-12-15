import 'dart:convert';
import 'package:email_validator/email_validator.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:sigest_landing_page/constants/components.dart';

class ContactForm extends StatefulWidget {
  const ContactForm({
    key,
  }) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  //Controladores
  final _nombreController = TextEditingController();
  final _emailController = TextEditingController();
  //dropdown tipo de proyecto
  String? _chosenValue;
  final _telefonoController = TextEditingController();
  final _descripcionController = TextEditingController();

  //Focus
  late FocusNode focusNombre,
      focusEmail,
      focusTelefono,
      focusDescripcion,
      focusTipo;

  @override
  void initState() {
    focusNombre = FocusNode();
    focusEmail = FocusNode();
    focusTelefono = FocusNode();
    focusDescripcion = FocusNode();
    focusTipo = FocusNode();

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
    focusTipo.dispose();

    super.dispose();
  }

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
      ),
      child: Form(
        key: _formKey,
        child: Wrap(
          spacing: 20.0 * 2.5,
          runSpacing: 20.0 * 1.5,
          children: [
            TextFormField(
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
                hintText: "Ingrese su nombre",
                border: OutlineInputBorder(),
              ),
            ),
            TextFormField(
              controller: _emailController,
              focusNode: focusEmail,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(focusTipo);
              },
              onChanged: (value) {},
              validator: (value) {
                return value != null && !EmailValidator.validate(value)
                    ? 'Debes ingresar un e-mail valido\n Ejemplo. xxxxx@yyyy.zzz'
                    : null;
              },
              decoration: const InputDecoration(
                labelText: "Correo electrónico",
                hintText: "Ingrese su dirección de correo electrónico",
                border: OutlineInputBorder(),
              ),
            ),
            ResponsiveRowColumn(
              layout: ResponsiveWrapper.of(context).isSmallerThan(DESKTOP)
                  ? ResponsiveRowColumnType.COLUMN
                  : ResponsiveRowColumnType.ROW,
              rowSpacing: 25,
              columnSpacing: 30,
              children: [
                ResponsiveRowColumnItem(
                  rowOrder: 1,
                  rowFlex: 1,
                  columnOrder: 1,
                  child: Container(
                    padding: const EdgeInsets.only(
                        top: 1, bottom: 1, right: 12, left: 12),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: const Color.fromARGB(255, 117, 117, 117),
                        width: 0.7,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: DropdownButton<String>(
                      focusNode: focusTipo,
                      underline: Container(
                          decoration: const BoxDecoration(
                              border: Border(bottom: BorderSide.none))),
                      isExpanded: true,
                      icon: Icon(Icons.arrow_downward_rounded,
                          color: Colors.grey[600]),
                      borderRadius: BorderRadius.circular(5),
                      value: _chosenValue,
                      items: <String>[
                        "Plan Basico",
                        "Plan Pro",
                      ].map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.grey[600]),
                          ),
                        );
                      }).toList(),
                      hint: Text(
                        "Tipo de producto",
                        style: TextStyle(
                            color: Colors.grey[600],
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            fontFamily: "Muli"),
                      ),
                      onChanged: (String? value) {
                        setState(() {
                          _chosenValue = value;
                        });
                      },
                    ),
                  ),
                ),
                ResponsiveRowColumnItem(
                  rowOrder: 2,
                  rowFlex: 1,
                  columnOrder: 2,
                  child: TextFormField(
                    controller: _telefonoController,
                    focusNode: focusTelefono,
                    onEditingComplete: () {
                      FocusScope.of(context).requestFocus(focusDescripcion);
                    },
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Debes ingresar tu número de teléfono";
                      }
                      return null;
                    },
                    onChanged: (value) {},
                    decoration: const InputDecoration(
                      labelText: "Teléfono",
                      hintText: "ingrese su teléfono",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            TextFormField(
              maxLines: 5,
              controller: _descripcionController,
              focusNode: focusDescripcion,
              onEditingComplete: () {
                FocusScope.of(context).requestFocus(FocusNode());
              },
              onChanged: (value) {},
              validator: (value) {
                if (value!.isEmpty) {
                  return "Debes ingresar tu consulta";
                }
                return null;
              },
              decoration: const InputDecoration(
                labelText: "Descripción",
                alignLabelWithHint: true,
                hintText: "Ingrese su consulta",
                border: OutlineInputBorder(),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: Center(
                child: TextButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      sendEmail(
                          name: _nombreController.text.trim(),
                          email: _emailController.text.trim(),
                          subject: _chosenValue == null
                              ? "Consulta sobre: Otros."
                              : "Consulta sobre: $_chosenValue.",
                          message:
                              "      Email: ${_emailController.text.trim()}."
                              "     Teléfono: ${_telefonoController.text.trim()}."
                              "     Mensaje: ${_descripcionController.text.trim()}.");
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Contacto'),
                              content: const Text(
                                  'Su mensaje fue enviado exitosamente, recibirá una respuesta a la brevedad. Gracias por comunicarte con nosotros.'),
                              actions: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Aceptar')),
                              ],
                            );
                          });
                      _nombreController.clear();
                      _emailController.clear();
                      _telefonoController.clear();
                      _descripcionController.clear();
                      _chosenValue = null;
                    } else {
                      showDialog(
                          context: context,
                          builder: (context) {
                            return AlertDialog(
                              title: const Text('Error'),
                              content: const Text(
                                  'Debes ingresar de forma correcta los campos solicitados para poder continuar.'),
                              actions: <Widget>[
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                    },
                                    child: const Text('Aceptar')),
                              ],
                            );
                          });
                    }
                  },
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all<Color>(primary),
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
                      // Shape sets the border radius from default 3 to 0.
                      shape: MaterialStateProperty.resolveWith<OutlinedBorder>(
                        (Set<MaterialState> states) {
                          if (states.contains(MaterialState.focused) ||
                              states.contains(MaterialState.pressed)) {
                            return const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(0)));
                          }
                          return const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0)));
                        },
                      ),
                      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          const EdgeInsets.symmetric(
                              vertical: 32, horizontal: 90)),
                      // Side adds pressed highlight outline.
                      side: MaterialStateProperty.resolveWith<BorderSide>(
                          (Set<MaterialState> states) {
                        if (states.contains(MaterialState.focused) ||
                            states.contains(MaterialState.pressed)) {
                          return const BorderSide(
                              width: 3, color: buttonPrimaryPressedOutline);
                        }
                        // Transparent border placeholder as Flutter does not allow
                        // negative margins.
                        return const BorderSide(width: 3, color: Colors.white);
                      })),
                  child: Text(
                    "Enviar consulta",
                    style: buttonTextStyle.copyWith(fontSize: 18),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future sendEmail(
      {required String name,
      required String email,
      required String subject,
      required String message}) async {
    const serviceId = 'service_dvkuq1m';
    const templateId = 'template_0f6hyjb';
    const userId = 'urhOJhqRSNLtJx_L1';
    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': name,
          'user_email': email,
          'user_subject': subject,
          'user_message': message,
        }
      }),
    );
  }
}
