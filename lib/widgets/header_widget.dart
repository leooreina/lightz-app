import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Header extends StatelessWidget {
  final String title;
  final double topMargin;

  const Header({Key? key, required this.title, required this.topMargin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 20, bottom: 10, top: this.topMargin),
        child: Text(this.title,
            style: TextStyle(
                color: HexColor('#474747'),
                fontSize: 18,
                fontWeight: FontWeight.w500)));
  }
}
