// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:lightz/controllers/theme_controller.dart';
import 'package:lightz/pages/dashboard_page.dart';

class LightzWidget extends StatelessWidget {
  const LightzWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: ThemeController.instance,
      builder: (context, child) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'Roboto',
            brightness: ThemeController.instance.isDarkTheme 
            ? Brightness.dark 
            : Brightness.light
          ),
          home: DashboardPage(),
        );
    });
  }
}
