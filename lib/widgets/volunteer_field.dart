import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class VolunteerField extends StatelessWidget {
  const VolunteerField({
    super.key,
    required this.hintText,
    required this.controller,
    required this.action,
    required this.keyBoardType,
    this.formatters, this.onEditingComplete,
  });

  final String hintText;
  final TextEditingController controller;
  final TextInputAction action;
  final TextInputType keyBoardType;
  final List<TextInputFormatter>? formatters;
  final VoidCallback? onEditingComplete;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: BorderSide.none,
    );
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return "This field is required*";
        }
        return null;
      },
      textInputAction: action,
      keyboardType: keyBoardType,
      inputFormatters: formatters,
      onEditingComplete: onEditingComplete,
      style: TextStyle(color: Color(0xFF4F8096), fontSize: 18),
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: Color(0xFFE8F0F2),
        hintText: hintText,
        contentPadding: EdgeInsets.all(18),
        hintStyle: TextStyle(color: Color(0xFF4F8096), fontSize: 18),
        border: border,
        focusedBorder: border,
        errorBorder: border,
        enabledBorder: border,
        focusedErrorBorder: border,
      ),
    );
  }
}
