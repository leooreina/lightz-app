import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HeaderSeeMore extends StatefulWidget {
  final String title;

  const HeaderSeeMore({Key? key, required this.title}) : super(key: key);

  @override
  _HeaderSeeMoreState createState() => _HeaderSeeMoreState();
}

class _HeaderSeeMoreState extends State<HeaderSeeMore> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 15, bottom: 10, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(widget.title,
              style: TextStyle(
              color: HexColor('#474747'),
              fontSize: 18,
              fontWeight: FontWeight.w500)),
          Text('Ver mais',
              style: TextStyle(
              color: HexColor("#C432A8"),
              fontSize: 14,
              fontWeight: FontWeight.w400)),
        ],
      ),
    );
  }
}
