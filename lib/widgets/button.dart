import 'package:flutter/material.dart';

class SubmitButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const SubmitButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Container(
        alignment: Alignment.center,
        decoration: const ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(30.0))),
          color: Color.fromARGB(255, 38, 16, 213),
        ),
        child: TextButton(
          onPressed: onPressed,
          style: const ButtonStyle(
              foregroundColor: MaterialStatePropertyAll(Colors.white)),
          child: Text(text, style: const TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}
