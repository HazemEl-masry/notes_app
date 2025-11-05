import 'package:flutter/material.dart';

class CustomField extends StatelessWidget {
  const CustomField({
    super.key,
    required this.hintText,
    required this.maxLines,
    required this.onSaved,
  });
  final String hintText;
  final int maxLines;
  final Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(16.0)),
        hintText: hintText,
      ),
      maxLines: maxLines,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Field is required";
        } else {
          return null;
        }
      },
    );
  }
}
