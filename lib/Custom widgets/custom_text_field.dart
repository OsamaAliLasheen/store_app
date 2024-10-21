import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField({
    super.key,
    required this.labelText,
    this.onchanged,
    this.keyboardType,
  });

  final String labelText;
  Function(String)? onchanged;
  TextInputType? keyboardType;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        style: const TextStyle(color: Colors.black),
        keyboardType: keyboardType,
        onChanged: onchanged,
        decoration: InputDecoration(
            labelText: labelText,
            enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            ),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.black),
              borderRadius: BorderRadius.all(Radius.circular(8.0)),
            )),
      ),
    );
  }
}
