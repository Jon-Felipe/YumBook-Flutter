import 'package:flutter/material.dart';

class Pill extends StatelessWidget {
  const Pill({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: GestureDetector(
        onTap: () {},
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.grey.shade400, width: 1),
            borderRadius: BorderRadius.circular(30),
          ),
          child: Text(text, style: TextStyle(fontSize: 16)),
        ),
      ),
    );
  }
}
