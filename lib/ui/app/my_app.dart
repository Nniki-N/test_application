import 'package:flutter/material.dart';
import 'package:test_application/ui/widgets/app_colors.dart';

/// Top app widget
class MyApp extends StatefulWidget {
  /// Constructor for this widget
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final appColors = AppColors();

  void onTapped() {
    setState(() {
      appColors.randomBgColor();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: appColors.bgColor,
        body: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: onTapped,
          child: const Center(
            child: Text(
              'Hey there',
              style: TextStyle(fontSize: 20),
            ),
          ),
        ),
      ),
    );
  }
}
