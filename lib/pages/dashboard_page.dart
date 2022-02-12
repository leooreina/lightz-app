// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/interfaces/description_list.dart';
import 'package:lightz/interfaces/header_see_more_props.dart';
import 'package:lightz/widgets/big_card_list_widget.dart';
import 'package:lightz/widgets/header_see_more_widget.dart';
import 'package:lightz/widgets/header_widget.dart';
import 'package:lightz/widgets/navigation_bar_lightz_widget.dart';
import 'package:lightz/widgets/top_bar_dashboard_widget.dart';
import 'package:lightz/widgets/card_list_widget.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  List<HeaderProps> data = [
    HeaderProps(title: 'Para onde quer ir?'),
    HeaderProps(title: 'Destaques'),
    HeaderProps(title: 'Promoções')
  ];

  List<DescriptionList> hightlightsList = [
    DescriptionList(
        description: 'Pilequinhos',
        url:
            'https://images.unsplash.com/photo-1559329007-40df8a9345d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
    DescriptionList(
        description: 'Box St. Burger & Bar',
        url:
            'https://images.unsplash.com/photo-1525268323446-0505b6fe7778?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2500&q=80'),
    DescriptionList(
        description: 'The Blue Pub',
        url:
            'https://images.unsplash.com/photo-1593887937265-2a09787dcc19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80'),
    DescriptionList(
        description: 'Pilequinhos',
        url: 'https://placeimg.com/640/480/any')
  ];

  List<DescriptionList> subtitlesList = [
    DescriptionList(
        description: 'RESTAURANTES',
        url:
            'https://images.unsplash.com/photo-1559329007-40df8a9345d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
    DescriptionList(
        description: 'BARES',
        url:
            'https://images.unsplash.com/photo-1525268323446-0505b6fe7778?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2500&q=80'),
    DescriptionList(
        description: 'PUBS',
        url:
            'https://images.unsplash.com/photo-1593887937265-2a09787dcc19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80'),
    DescriptionList(
        description: 'LOUNGE',
        url: 'https://placeimg.com/640/480/any')
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          TopBarDashboard(),
          Header(title: data[0].title),
          CardList(list: subtitlesList, fontWeight: FontWeight.w600),
          Container(
              height: 100,
              margin: EdgeInsets.only(bottom: 10, top: 5),
              color: HexColor("#C432A8")),
          HeaderSeeMore(title: data[1].title),
          BigCardList(highlights: hightlightsList),
          Container(
            color: HexColor('#474747'),
            height: 0.3,
            margin: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          ),
          HeaderSeeMore(title: data[2].title),
          CardList(list: hightlightsList, fontWeight: FontWeight.w400,)
        ],
      ),
      bottomNavigationBar: NavigationBarLightz(),
    );
  }
}
