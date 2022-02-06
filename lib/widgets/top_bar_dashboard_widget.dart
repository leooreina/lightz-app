import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/icons/icons.dart';

class TopBarDashboard extends StatelessWidget {
  const TopBarDashboard({Key? key}) : super(key: key);

  final double containersWidth = 230;
  final double containersHeight = 50;
  final double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(bottom: 10, left: 25, right: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                width: containersWidth,
                height: containersHeight,
                child: Text('Olá, Guilherme',
                    style: TextStyle(color: HexColor('#7A7A7A'))),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  width: containersWidth,
                  height: containersHeight,
                  child: Text('Rua Fulano de Tal, 121',
                      style: TextStyle(
                          color: HexColor('#474747'),
                          fontSize: 16,
                          fontWeight: FontWeight.w500))),
            ],
          ),
          Icon(
            Lightz.lightz,
            color: HexColor("#C432A8"),
            size: iconSize,
          )
        ],
      ),
    );
  }
}
