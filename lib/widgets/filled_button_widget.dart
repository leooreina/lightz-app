import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/controllers/navigation_controller.dart';
import 'package:lightz/pages/results_filtered_page.dart';

class FilledButton extends StatefulWidget {
  final List categories;

  const FilledButton({Key? key, required this.categories}) : super(key: key);

  @override
  State<FilledButton> createState() => _FilledButtonState();
}

class _FilledButtonState extends State<FilledButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      margin: EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [HexColor('#C432A8'), HexColor('#7A3ABB')]),
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ResultsFilteredPage(categories: widget.categories)));
          NavigationController.instance
              .changePage('results', HexColor('#C432A8'));
        },
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
        ),
        child: Text(
          'PESQUISAR',
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
        ),
      ),
    );
  }
}
