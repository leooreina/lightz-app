import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/interfaces/checkbox_model.dart';
import 'package:lightz/widgets/checkbox_widget.dart';
import 'package:lightz/widgets/divider_widget.dart';
import 'package:lightz/widgets/header_back_button_widget.dart';
import 'package:lightz/widgets/header_widget.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool isChecked = false;

  List<Widget> _createCheckboxes(list) {
    return List<Widget>.generate(list.length, (index) {
      return CheckboxCustom(
          item: CheckBoxModel(
        texto: list[index],
        isChecked: isChecked,
        onChange: (value) {
          isChecked = value;
        },
        backgroundColor: HexColor('#C432A8'),
        borderColor: HexColor('#474747'),
        size: 35,
        iconSize: 25,
      ));
    });
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: ListView(
        children: [
          HeaderBackButton(width: width, page: 'initial', title: 'Filtrar'),
          const Header(title: 'O que você procura?', topMargin: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 20),
                height: 100,
                width: width / 2,
                child: Column(
                  children: _createCheckboxes(["Restaurantes", "Bares"]),
                )),
              Container(
                alignment: Alignment.topLeft,
                padding: const EdgeInsets.only(left: 15),
                height: 100,
                width: width / 2,
                child: Column(
                  children: _createCheckboxes(["Pubs", "Lounges"]),
                ),
              )
            ],
          ),
          DividerSlash(),
          Header(title: 'Características', topMargin: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 20),
                  height: 150,
                  width: width / 2,
                  child: Column(
                    children: _createCheckboxes(["Área de fumantes", "Acessibilidade", "Aceita Pets"]),
                  )),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 15),
                height: 150,
                width: width / 2,
                child: Column(
                  children: _createCheckboxes(['Aberto 24 horas', 'LGBTQIA+']),
                ),
              )
            ],
          ),
          DividerSlash(),
          Header(title: 'Raio de busca', topMargin: 20)
        ],
      ),
    );
  }
}
