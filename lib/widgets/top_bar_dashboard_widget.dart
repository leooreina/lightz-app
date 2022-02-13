import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/controllers/navigation_controller.dart';
import 'package:lightz/pages/filter_page.dart';

class TopBarDashboard extends StatelessWidget {
  const TopBarDashboard({Key? key}) : super(key: key);

  final double containersWidth = 230;
  final double containersHeight = 20;
  final double iconSize = 40;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: NavigationController.instance,
      builder: (context, child) {
        return Container(
          margin: const EdgeInsets.only(bottom: 15, left: 25, right: 30),
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
                      margin: const EdgeInsets.symmetric(vertical: 10),
                      width: containersWidth,
                      height: containersHeight,
                      child: Text('Rua Fulano de Tal, 121',
                          style: TextStyle(
                              color: HexColor('#474747'),
                              fontSize: 16,
                              fontWeight: FontWeight.w500))),
                ],
              ),
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xffe6e6ec),
                  borderRadius: BorderRadius.circular(9.0),
                ),
                child: IconButton(
                  icon: const Icon(Icons.tune),
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const FilterPage()
                      )
                    );
                    NavigationController.instance
                        .changePage('filter', HexColor('#C432A8'));
                  },
                ),
              ),
            ],
          ),
        );
      }
    );
  }
}
// TODO: Use Lightz icon this way:
// Icon(
//   Lightz.lightz,
//   color: HexColor("#C432A8"),
//   size: iconSize,
// )
