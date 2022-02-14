import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
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
  bool isChecked = false;

  

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
                  padding: EdgeInsets.only(left: 15),
                  height: 150,
                  width: width / 2,
                  color: HexColor('#6e6e6e'),
                  child: Column(
                    children: [
                      CheckboxCustom(item: CheckBoxModel(
                        texto: "Restaurantes",
                        isChecked: isChecked,
                        onChange: (value) {
                          isChecked = value;
                        },
                        backgroundColor: HexColor('#C432A8'),
                        borderColor: HexColor('#474747'),
                        size: 35,
                        iconSize: 25,
                      )),
                      CheckboxCustom(item: CheckBoxModel(
                        texto: "Bares",
                        isChecked: isChecked,
                        onChange: (value) {
                          isChecked = value;
                        },
                        backgroundColor: HexColor('#C432A8'),
                        borderColor: HexColor('#474747'),
                        size: 35,
                        iconSize: 25,
                      ))
                    ],
                  )),
              Container(
                alignment: Alignment.topLeft,
                padding: EdgeInsets.only(left: 15),
                height: 150,
                width: width / 2,
                color: HexColor('#7ef362'),
                child: Column(
                  children: [
                    CheckboxCustom(item: CheckBoxModel(
                      texto: "Pubs",
                      isChecked: isChecked,
                      onChange: (value) {
                        isChecked = value;
                      },
                      backgroundColor: HexColor('#C432A8'),
                      borderColor: HexColor('#474747'),
                      size: 35,
                      iconSize: 25,
                    )),
                    CheckboxCustom(item: CheckBoxModel(
                      texto: "Lounges",
                      isChecked: isChecked,
                      onChange: (value) {
                        isChecked = value;
                      },
                      backgroundColor: HexColor('#C432A8'),
                      borderColor: HexColor('#474747'),
                      size: 35,
                      iconSize: 25,
                    ))
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
