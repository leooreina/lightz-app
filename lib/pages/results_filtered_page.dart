import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/interfaces/description_list.dart';
import 'package:lightz/widgets/card_list_widget.dart';
import 'package:lightz/widgets/divider_widget.dart';
import 'package:lightz/widgets/header_widget.dart';

class ResultsFilteredPage extends StatefulWidget {
  final List categories;
  const ResultsFilteredPage({Key? key, required this.categories})
      : super(key: key);

  @override
  _ResultsFilteredPageState createState() => _ResultsFilteredPageState();
}

class _ResultsFilteredPageState extends State<ResultsFilteredPage> {
  _categoriesTextBuilder() {
    var categoriesSize = widget.categories.length;
    switch (categoriesSize) {
      case 0:
        return 'Lugares';
      case 1:
        return widget.categories[0];
      case 2:
        return '${widget.categories[0]} e ${widget.categories[1]}';
      default:
        return _textBuilderMultipleCategories(categoriesSize);
    }
  }

  _textBuilderMultipleCategories(categoriesSize) {
    var lastPositions =
        widget.categories.sublist(categoriesSize - 2, categoriesSize);
    var initialPositions = widget.categories.sublist(0, categoriesSize - 2);
    return categoriesSize > 3
        ? 'Todas as categorias'
        : '${initialPositions.join()}, ${lastPositions.join(' e ')}';
  }

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

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          child: AppBar(
            elevation: 0,
            leading: IconButton(
            icon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: 30,
                color: HexColor('#474747')
              ),
              onPressed: () {
                Navigator.of(context).pop();
              }
            ),
            backgroundColor: HexColor('#C4C4C4'),
            centerTitle: true,
            title: Text(_categoriesTextBuilder(),
              style:
                TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: HexColor('#474747')
                )
            )
          ),
          preferredSize: Size.fromHeight(90)
        ),
        body: ListView(
          children: [
            Header(title: 'Destaques', topMargin: 10),
            CardList(list: hightlightsList, fontWeight: FontWeight.w400),
            DividerSlash(),
            Header(title: '${_categoriesTextBuilder()} por perto', topMargin: 10),
          ]
        )
    );
  }
}
