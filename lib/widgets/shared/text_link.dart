import 'package:flutter/material.dart';

class TextLink extends StatelessWidget {
  const TextLink({super.key, required this.text, required this.onPressed});

  final String text;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        overlayColor: Colors.transparent,
        padding: EdgeInsets.zero,
        minimumSize: Size(0, 0),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: onPressed,
      child: Text(text, style: TextStyle(color: Colors.orange)),
    );
  }
}
