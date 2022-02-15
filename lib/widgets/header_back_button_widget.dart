import 'package:flutter/material.dart';
import 'package:lightz/widgets/app_back_button_widget.dart';

class HeaderBackButton extends StatelessWidget {
  const HeaderBackButton({Key? key, required this.width, required this.page, required this.title})
      : super(key: key);

  final double width;
  final String page;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.only(left: 5, right: 15),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppBackButton(
                page: page,
              )
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: (width / 3.2)),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
