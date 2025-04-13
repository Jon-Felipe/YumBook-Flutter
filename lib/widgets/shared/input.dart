import 'package:flutter/material.dart';

class Input extends StatefulWidget {
  const Input({
    super.key,
    required this.label,
    required this.hintText,
    this.keyboardType = TextInputType.text,
    this.isPassword = false,
    this.validator,
  });

  final String label;
  final String hintText;
  final TextInputType keyboardType;
  final bool isPassword;
  final String? Function(String?)? validator;

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        labelText: widget.label,
        hintText: widget.hintText,
        suffixIcon:
            widget.isPassword
                ? IconButton(icon: Icon(Icons.visibility_off), onPressed: () {})
                : null,
      ),
      validator: widget.validator,
    );
  }
}
