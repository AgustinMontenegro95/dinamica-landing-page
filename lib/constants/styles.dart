import 'package:dinamica_landing_page/constants/components.dart';
import 'package:flutter/material.dart';

final buttonStylePro = ButtonStyle(
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
);
