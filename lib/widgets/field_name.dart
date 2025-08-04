import 'package:flutter/material.dart';

class FieldName extends StatelessWidget {
  const FieldName({super.key, required this.name});

  final String name;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    );
  }
}
