import 'dart:math';

import 'package:flutter/material.dart';

/// Main colors class that consist all colors used in app
class AppColors {
  /// App background color
  Color bgColor = Colors.white;

  /// Method that generate random background color for the app
  void randomBgColor() {
    bgColor = _randomColor();
  }

  /// Method that generate random color
  Color _randomColor() {
    final random = Random();
    const max = 256;

    return Color.fromRGBO(
      random.nextInt(max),
      random.nextInt(max),
      random.nextInt(max),
      1,
    );
  }
}
