// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:lightz/controllers/navigation_controller.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/pages/dashboard_page.dart';

class NavigationBarLightz extends StatefulWidget {
  const NavigationBarLightz({Key? key}) : super(key: key);

  @override
  _NavigationBarLightzState createState() => _NavigationBarLightzState();
}

class _NavigationBarLightzState extends State<NavigationBarLightz> {
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: NavigationController.instance,
      builder: (context, child) {
        return Container(
          height: 85,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 10,
                blurRadius: 12,
                offset: const Offset(0, 3)
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      IconButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              MaterialPageRoute(
                                builder: (context) => const DashboardPage()
                              )
                            );
                            NavigationController.instance
                                .changePage('initial', HexColor('#C432A8'));
                          },
                          icon: Icon(
                            Icons.home,
                              color: NavigationController.instance.initialColor,
                            )
                          ),
                      Text(
                        'Início',
                        style: TextStyle(
                          color: NavigationController.instance.initialColor,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          NavigationController.instance
                              .changePage('search', HexColor('#C432A8'));
                        },
                        icon: Icon(
                          Icons.search,
                          color: NavigationController.instance.searchColor,
                        ),
                      ),
                      Text(
                        'Busca',
                        style: TextStyle(
                          color: NavigationController.instance.searchColor,
                        ),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          NavigationController.instance
                              .changePage('discount', HexColor('#C432A8'));
                        },
                        icon: Icon(
                          Icons.confirmation_num_outlined,
                          color: NavigationController.instance.discountColor
                        )
                      ),
                      Text(
                        'Cupons',
                        style: TextStyle(
                          color: NavigationController.instance.discountColor,
                        )
                      )
                    ],
                  ),
                  Column(
                    children: [
                      IconButton(
                        onPressed: () {
                          NavigationController.instance
                              .changePage('profile', HexColor('#C432A8'));
                        },
                        icon: Icon(
                          Icons.person_outline,
                          color: NavigationController.instance.profileColor
                        )
                      ),
                      Text(
                        'Perfil',
                        style: TextStyle(
                          color: NavigationController.instance.profileColor,
                        )
                      )
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
