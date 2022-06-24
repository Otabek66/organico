import 'package:flutter/material.dart';

class FormFiledDecor {
  static decor(String text, {Icon? suffixIcon}) {
    return InputDecoration(
      hintText: text,
      contentPadding: const EdgeInsets.symmetric(horizontal: 15, vertical: 13),
      border: OutlineInputBorder(
        borderSide: const BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(100),
      
      ),
      suffixIcon: suffixIcon
    );
  }
}
