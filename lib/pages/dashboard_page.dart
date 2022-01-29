// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/icons/icons.dart';
import 'package:lightz/widgets/navigation_bar_lightz_widget.dart';
import 'package:lightz/widgets/switch_themes_widget.dart';
import 'package:lightz/widgets/top_bar_dashboard_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          TopBarDashboard()
        ],
      ),
      bottomNavigationBar: NavigationBarLightz(),
    );
  }
}
