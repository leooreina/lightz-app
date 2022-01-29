import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/controllers/theme_controller.dart';

class SwitchThemes extends StatefulWidget {
  const SwitchThemes({ Key? key }) : super(key: key);

  @override
  _SwitchThemesState createState() => _SwitchThemesState();
}

class _SwitchThemesState extends State<SwitchThemes> {
  @override
  Widget build(BuildContext context) {
    return Switch(
      activeColor: HexColor('#C432A8'),
      value: ThemeController.instance.isDarkTheme,
      onChanged: (value) {
        ThemeController.instance.changeTheme();
      }
    );
  }
}