import 'package:flutter/material.dart';
import 'inputborder.dart';

// Text Field Widget
TextFormField customField(String label, dynamic customController) {
  return TextFormField(
    controller: customController,
    decoration: InputDecoration(
      label: Text(label),
      border: customBorder(),
      enabledBorder: customBorder(),
    ),
  );
}
