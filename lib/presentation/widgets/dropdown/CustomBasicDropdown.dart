import 'package:flutter/material.dart';

import '../../themes/Colors.dart';

DropdownButtonFormField<String> customBasicDropdown(
    String? value, List<String> itemValue, void Function(String?) onChanged) {
  return (DropdownButtonFormField<String>(
    decoration: InputDecoration(
      labelText: 'Gender',
      enabledBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: CustomColors.hitam),
        borderRadius: BorderRadius.circular(12),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: const BorderSide(color: CustomColors.biru, width: 2),
        borderRadius: BorderRadius.circular(12),
      ),
    ),
    value: value,
    items: itemValue.map((String status) {
      return DropdownMenuItem<String>(
        value: status,
        child: Text(status),
      );
    }).toList(),
    onChanged: onChanged,
  ));
}
