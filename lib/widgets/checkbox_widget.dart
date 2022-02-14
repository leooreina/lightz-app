import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/interfaces/checkbox_model.dart';

class CheckboxCustom extends StatefulWidget {
  const CheckboxCustom({Key? key, required this.item}) : super(key: key);

  final CheckBoxModel item;

  @override
  _CheckboxCustomState createState() => _CheckboxCustomState();
}

class _CheckboxCustomState extends State<CheckboxCustom> {
  @override
  Widget build(BuildContext context) {
    return CheckboxListTile(
        title: Text(widget.item.texto),
        activeColor: HexColor('#C432A8'),
        controlAffinity: ListTileControlAffinity.leading,
        value: widget.item.marked,
        onChanged: (bool? value) {
          setState(() {
            widget.item.marked = value!;
          });
        });
  }
}
