import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/controllers/navigation_controller.dart';
import 'package:lightz/interfaces/checkbox_model.dart';
import 'package:lightz/widgets/checkbox_widget.dart';
import 'package:lightz/widgets/divider_widget.dart';
import 'package:lightz/widgets/filled_button_widget.dart';
import 'package:lightz/widgets/header_widget.dart';

import 'package:syncfusion_flutter_core/theme.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class FilterPage extends StatefulWidget {
  const FilterPage({Key? key}) : super(key: key);

  @override
  _FilterPageState createState() => _FilterPageState();
}

class _FilterPageState extends State<FilterPage> {
  bool isChecked = false;
  double _searchRadius = 2;
  double _searchValue = 50;
  List categoriesChecked = [];

  List<Widget> _createCheckboxes(list) {
    return List<Widget>.generate(list.length, (index) {
      return CheckboxCustom(
          item: CheckBoxModel(
        texto: list[index],
        isChecked: isChecked,
        onChange: (value) {
          isChecked = value;
          isChecked ? categoriesChecked.add(list[index]) : categoriesChecked.removeWhere((element) => element == list[index]);
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
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        child: AppBar(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar brightness (optional)
            statusBarIconBrightness: Brightness.dark, // For Android (dark icons)
            statusBarBrightness: Brightness.light, // For iOS (dark icons)
          ),
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios_new_rounded,
              size: 30,
              color: HexColor('#474747')
            ),
            onPressed: () {
              Navigator.of(context).pop();
              NavigationController.instance
                  .changePage('initial', HexColor('#C432A8'));
            }
          ),
          elevation: 0,
          backgroundColor: Colors.transparent,
          centerTitle: true,
          title: Text(
            'Filtrar',
            style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w600,
              color: HexColor('#474747')
            )
          )
        ),
        preferredSize: Size.fromHeight(70)
      ),
      body: ListView(
        children: [
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
                    children: _createCheckboxes(
                        ["Área de fumantes", "Acessibilidade", "Aceita Pets"]),
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
          Header(title: 'Raio de busca', topMargin: 20),
          SfSliderTheme(
            data: SfSliderThemeData(
                activeDividerRadius: 5.0,
                inactiveDividerRadius: 5.0,
                inactiveDividerColor: HexColor('#C4C4C4').withOpacity(0.90),
                activeDividerColor: HexColor('#C432A8'),
                activeTrackColor: HexColor('#C432A8'),
                thumbColor: Colors.white,
                inactiveTrackColor: HexColor('#C4C4C4').withOpacity(0.90),
                overlayColor: HexColor('#C432A8').withOpacity(0.12),
                activeLabelStyle: TextStyle(
                  color: HexColor('#474747'),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                inactiveLabelStyle: TextStyle(
                  color: HexColor('#C4C4C4'),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                activeTrackHeight: 2,
                inactiveTrackHeight: 2,
                labelOffset: Offset(5.0, 15.0)),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: SfSlider(
                min: 0,
                max: 9.5,
                value: _searchRadius,
                interval: 2,
                stepSize: 2,
                showLabels: true,
                showDividers: true,
                onChanged: (dynamic value) {
                  setState(() {
                    _searchRadius = value;
                  });
                },
                labelFormatterCallback:
                    (dynamic actualValue, String formattedText) {
                  switch (actualValue) {
                    case 2:
                      return '1-${actualValue.round()} km';
                    case 4:
                      return ' 3-${(actualValue + 1).round()} km';
                    case 6:
                      return ' 6-${(actualValue + 2).round()} km';
                    case 8:
                      return ' 9-${(actualValue + 2).round()} km';
                    default:
                      return '';
                  }
                },
              ),
            ),
          ),
          DividerSlash(),
          Header(title: 'Valor', topMargin: 20),
          SfSliderTheme(
            data: SfSliderThemeData(
                activeTrackColor: HexColor('#C432A8'),
                thumbColor: Colors.white,
                inactiveTrackColor: HexColor('#C4C4C4').withOpacity(0.90),
                overlayColor: HexColor('#C432A8').withOpacity(0.12),
                inactiveLabelStyle: TextStyle(
                  color: HexColor('#474747'),
                  fontSize: 14,
                  fontWeight: FontWeight.w400,
                ),
                activeTrackHeight: 2,
                inactiveTrackHeight: 2,
                labelOffset: Offset(0.0, 15.0)),
            child: Container(
              margin: const EdgeInsets.only(bottom: 20.0),
              child: SfSlider(
                min: 0,
                max: 500,
                value: _searchValue,
                interval: 1,
                showLabels: true,
                onChanged: (dynamic value) {
                  setState(() {
                    _searchValue = value;
                  });
                },
                labelFormatterCallback:
                    (dynamic actualValue, String formattedText) {
                  return actualValue == _searchValue.round()
                      ? 'R\$ $formattedText'
                      : '';
                },
              ),
            ),
          ),
          FilledButton(categories: categoriesChecked)
        ],
      ),
    );
  }
}
