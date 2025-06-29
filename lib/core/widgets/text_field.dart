import 'package:flutter/material.dart';
import 'package:kelompok_5/core/constant/colors.dart';

class MyTextField extends StatelessWidget {
  final String labelText;
  final String? hintText;
  final TextEditingController? controller;
  final bool? isObscure;
  final String? Function(String?)? validator;
  const MyTextField({
    super.key,
    required this.labelText,
    this.hintText,
    this.controller,
    this.isObscure = false,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure ?? false,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: AppColors.grey,
        hintText: hintText ?? 'Masukkan $labelText',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: Theme.of(context).primaryColor),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.grey.shade400),
          borderRadius: BorderRadius.circular(16.0),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16.0),
          borderSide: BorderSide(color: Colors.red.shade400),
        ),
      ),
      validator: validator,
    );
  }
}
