import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final String? errorMessage;
  final Function(String)? onChanged;
  final String? Function(String?)? validador;
  final bool obscureText;

  const CustomTextFormField(
      {super.key,
      this.label,
      this.hint,
      this.errorMessage,
      this.onChanged,
      this.validador,
      this.obscureText = false});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final border = OutlineInputBorder(borderRadius: BorderRadius.circular(40));
    return TextFormField(
      onChanged: onChanged,
      validator: validador,
      obscureText: obscureText,
      decoration: InputDecoration(
          enabledBorder: border,
          focusedBorder:
              border.copyWith(borderSide: BorderSide(color: colors.primary)),
          errorBorder: border.copyWith(
              borderSide: BorderSide(color: Color.fromARGB(255, 37, 223, 223))),
          focusedErrorBorder: border.copyWith(
              borderSide: BorderSide(color: Color.fromARGB(255, 10, 143, 96))),
          isDense: true,
          label: label != null ? Text(label!) : null,
          hintText: hint,
          errorText: errorMessage,
          focusColor: colors.primary),
    );
  }
}