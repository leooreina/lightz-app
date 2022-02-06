// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/icons/icons.dart';
import 'package:lightz/widgets/navigation_bar_lightz_widget.dart';
import 'package:lightz/widgets/top_bar_dashboard_widget.dart';
import 'package:lightz/widgets/where_to_go_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TopBarDashboard(),
          Container(
            margin: EdgeInsets.only(left: 15, bottom: 10),
            child: Text(
              'Para onde quer ir?',
              style: TextStyle(
                color: HexColor('#474747'),
                fontSize: 18,
                fontWeight: FontWeight.w500
              )
            ),
          ),
          WhereToGo(),
          Container(
            height: 100,
            margin: EdgeInsets.only(bottom: 10),
            color: HexColor("#C432A8")
          )
        ],
      ),
      bottomNavigationBar: NavigationBarLightz(),
    );
  }
}
