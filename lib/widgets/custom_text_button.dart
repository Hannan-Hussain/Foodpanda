import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final Widget? prefixIcon;
  final bool noicon;
  final bool obscureText;
  final Widget? suffixIcon;
  final Function(String)? onchange;

  const CustomTextField({
    required this.controller,
    required this.hintText,
    this.prefixIcon,
    this.noicon = false,
    this.obscureText =false,
    this.suffixIcon,
    this.onchange,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      onChanged: onchange,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: noicon ? null : prefixIcon,
        suffixIcon: suffixIcon, // now supported
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}
