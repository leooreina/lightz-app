import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class FilledButton extends StatefulWidget {
  const FilledButton({
    Key? key,
  }) : super(key: key);

  @override
  State<FilledButton> createState() => _FilledButtonState();
}

class _FilledButtonState extends State<FilledButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [HexColor('#C432A8'), HexColor('#7A3ABB')]),
        borderRadius: BorderRadius.all(Radius.circular(10.0))
      ),
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          'PESQUISAR',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800
          ),
        ),
      ),
    );
  }
}