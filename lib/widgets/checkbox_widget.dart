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
  bool isChecked = false;

  @override
  void initState() {
    super.initState();
    isChecked = widget.item.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isChecked = !isChecked;
          widget.item.onChange(isChecked);
        });
      },
      child: Row(
        children: [
          AnimatedContainer(
            margin: EdgeInsets.symmetric(vertical: 5),
            height: widget.item.size ?? 28,
            width: widget.item.size ?? 28,
            duration: const Duration(milliseconds: 500),
            curve: Curves.fastLinearToSlowEaseIn,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: isChecked
                    ? widget.item.backgroundColor ?? Colors.deepPurple
                    : Colors.transparent,
                border: Border.all(
                  color: isChecked
                    ? widget.item.backgroundColor ?? Colors.deepPurple
                    : HexColor('#474747'))
                ),
            child: isChecked
                ? Icon(
                    widget.item.icon ?? Icons.check,
                    color: widget.item.iconColor ?? Colors.white,
                    size: widget.item.iconSize ?? 20,
                  )
                : null
          ),
          Container(
            margin: const EdgeInsets.only(left: 15),
            child: Text(
              widget.item.texto,
              style: const TextStyle(
                fontSize: 15
              ),
            ),
          )
        ],
      ),
    );
  }
}
