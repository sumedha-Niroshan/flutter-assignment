import 'package:flutter/material.dart';

class ListTileSection extends StatelessWidget {
  final Icon icon;
  final String text;
  final VoidCallback onPressed;

  const ListTileSection(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon,
      title: Text(
        text,
        style: const TextStyle(
          fontSize: 26,
          color: Color.fromARGB(255, 31, 31, 31),
        ),
      ),
      selected: true,
      trailing: const Icon(
        Icons.chevron_right,
        size: 32,
        color: Color.fromARGB(255, 31, 31, 31),
      ),
      onTap: onPressed,
      textColor: Colors.black,
      tileColor: Colors.black,
    );
  }
}
