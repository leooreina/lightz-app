import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class Header extends StatelessWidget {
  final String title;

  const Header({ Key? key, required this.title }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 15, bottom: 10),
      child: Text(
        this.title,
        style: TextStyle(
          color: HexColor('#474747'),
          fontSize: 18,
          fontWeight: FontWeight.w500
        )
      )
    );
  }
}