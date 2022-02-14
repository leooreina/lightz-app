import 'package:flutter/material.dart';
import 'package:lightz/interfaces/checkbox_model.dart';
import 'package:lightz/widgets/checkbox_widget.dart';
import 'package:lightz/widgets/header_back_button_widget.dart';
import 'package:lightz/widgets/header_widget.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  final List<CheckBoxModel> itens = [
    CheckBoxModel(texto: "Restaurantes"), 
    CheckBoxModel(texto: "Bares"), 
    CheckBoxModel(texto: "Pubs"),
    CheckBoxModel(texto: "Lounges"),
  ];

  @override
  Widget build(BuildContext context) {
  double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          HeaderBackButton(width: width, page: 'initial', title: 'Filtrar'),
          const Header(title: 'O que você procura?', topMargin: 20),
          Column(
            children: [
              CheckboxCustom(item: itens[0]), 
              CheckboxCustom(item: itens[1])
            ],
          ),
          Column(
            children: [
              CheckboxCustom(item: itens[2]),
              CheckboxCustom(item: itens[3])
            ],
          )
          // Wrap(
          //   alignment: WrapAlignment.end,
          //   spacing: 10.0,
          //   runSpacing: 2.0,
          //   children: [
          //     , 
          //     
          //   ],
          // )
        ],
      ),
    );
  }
}
