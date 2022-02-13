import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/controllers/navigation_controller.dart';

class AppBackButton extends StatefulWidget {
  final String page;
  const AppBackButton({Key? key, required this.page}) : super(key: key);

  @override
  _AppBackButtonState createState() => _AppBackButtonState();
}

class _AppBackButtonState extends State<AppBackButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
        icon: const Icon(
          Icons.arrow_back_ios_new_rounded,
          size: 35,
        ),
        onPressed: () {
          Navigator.of(context).pop();
          NavigationController.instance
              .changePage(widget.page, HexColor('#C432A8'));
        });
  }
}
