import 'package:flutter/material.dart';

class BlueButton extends StatelessWidget {
  const BlueButton({super.key, required this.onPressed, required this.buttonName});

  final VoidCallback onPressed;
  final String buttonName;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      elevation: 0,
      color: Color(0xFF1AA1E5),
      textColor: Colors.white,
      minWidth: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusGeometry.circular(10),
      ),
      onPressed: onPressed,
      child: Text(
        buttonName,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
      ),
    );
  }
}
