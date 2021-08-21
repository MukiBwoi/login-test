import 'package:flutter/material.dart';

//field border
OutlineInputBorder customBorder() {
  return const OutlineInputBorder(
    borderSide: BorderSide(color: Colors.grey),
    borderRadius: BorderRadius.all(
      Radius.circular(10),
    ),
  );
}