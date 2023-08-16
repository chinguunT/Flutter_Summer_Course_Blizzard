import 'package:flutter/material.dart';

class TextFieldInput extends StatelessWidget {
  final String hintText;
  final bool obsecureText;
  final TextEditingController textEditingController;
  final TextInputType textInputType;

  const TextFieldInput({
    super.key,
    required this.hintText,
    required this.obsecureText,
    required this.textEditingController,
    required this.textInputType
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: textEditingController,
      decoration: InputDecoration(
        hintText: hintText,
        border: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: Divider.createBorderSide(context),
        ),
        enabledBorder:
            OutlineInputBorder(borderSide: Divider.createBorderSide(context)),
        filled: true,
        contentPadding: const EdgeInsets.all(8),
      ),
      keyboardType: this.textInputType,
      obscureText: this.obsecureText,
    );
  }
}
