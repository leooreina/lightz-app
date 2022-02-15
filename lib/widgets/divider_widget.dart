import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class DividerSlash extends StatelessWidget {
  const DividerSlash({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: HexColor('#474747'),
      height: 0.3,
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
    );
  }
}