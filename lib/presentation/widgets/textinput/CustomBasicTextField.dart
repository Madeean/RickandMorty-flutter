import 'package:flutter/material.dart';

import '../../themes/Colors.dart';

TextField customBasicTextField(
  TextEditingController controller,
  String placeholder,
  IconData icon,
) {
  return (TextField(
    controller: controller,
    decoration: InputDecoration(
      hintText: placeholder,
      prefixIcon: Icon(icon),
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: CustomColors.hitam),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: CustomColors.biru, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
  ));
}
