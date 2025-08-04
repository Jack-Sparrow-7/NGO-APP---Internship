import 'package:flutter/material.dart';

extension ScreenUtils on BuildContext {
  double get width => MediaQuery.sizeOf(this).width;
  double get height => MediaQuery.sizeOf(this).height;

  double w(double percent) => width * percent / 100;
  double h(double percent) => height * percent / 100;
}
