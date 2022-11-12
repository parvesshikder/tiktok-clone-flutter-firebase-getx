

import 'package:com/constants.dart';
import 'package:flutter/material.dart';

class TextInputField extends StatelessWidget {
  final TextEditingController controller;
  final IconData icon;
  final Text labelText;
  final bool obcText;
  
  const TextInputField({super.key, required this.controller, required this.icon, required this.labelText, this.obcText = false});

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        label: labelText,
        prefixIcon: Icon(icon),
        labelStyle: const TextStyle(fontSize: 18),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: borderColor,
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: const BorderSide(
            color: borderColor,
          )
        ),
      ),
      obscureText: obcText,
    );
  }
}