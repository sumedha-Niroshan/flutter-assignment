import 'package:flutter/material.dart';

class TextInputFeild extends StatelessWidget {
  final TextEditingController controller;
  final bool isPassword;
  final TextInputType inputkeyboardType;
  final String hintText;
  final Icon icon;
  final TextInputAction textinputAction;

  const TextInputFeild(
      {super.key,
      required this.controller,
      required this.isPassword,
      required this.inputkeyboardType,
      required this.hintText,
      required this.textinputAction,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    const inputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      borderSide: BorderSide(color: Colors.grey),
    );
    return TextField(
      controller: controller,
      keyboardType: inputkeyboardType,
      obscureText: isPassword,
      textInputAction: textinputAction,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: icon,
        enabledBorder: inputBorder,
        focusedBorder: inputBorder,
        contentPadding: const EdgeInsets.all(8),
      ),
    );
  }
}
