import 'package:flutter/material.dart';
import 'package:lightz/widgets/header_back_button_widget.dart';
import 'package:lightz/widgets/header_widget.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {

  @override
  Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          HeaderBackButton(width: width, page: 'initial', title: 'Filtrar'),
          const Header(title: 'O que você procura?', topMargin: 20)
        ],
      ),
    );
  }
}
