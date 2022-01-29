import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/icons/icons.dart';

class TopBarDashboard extends StatelessWidget {
  const TopBarDashboard({Key? key}) : super(key: key);

  final double margins = 30.0;
  final double containersWidth = 270;
  final double iconSize = 45;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: EdgeInsets.only(
        left: margins, top: margins, right: margins, bottom: 0.0
      ),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Container(
          alignment: Alignment.bottomLeft,
          child: Column(
            children: [
              Container(
                alignment: Alignment.bottomLeft,
                height: 50,
                width: containersWidth,
                child: Text('Olá, Guilherme',
                  style: TextStyle(
                    color: HexColor('#7A7A7A')
                  )
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                height: 30,
                width: containersWidth,
                child: Text(
                  'Rua Fulano de Tal, 121',
                  style: TextStyle(
                    color: HexColor('#474747'),
                    fontSize: 16,
                    fontWeight: FontWeight.w500
                  )
                )
              )
            ]
          ),
        ),
        Icon(
          Lightz.lightz,
          color: HexColor("#C432A8"),
          size: iconSize,
        )
      ]),
    );
  }
}
