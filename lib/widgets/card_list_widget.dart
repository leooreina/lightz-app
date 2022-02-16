// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/interfaces/description_list.dart';
import 'package:lightz/widgets/shimmer_widget.dart';
import 'package:shimmer/shimmer.dart';

class CardList extends StatefulWidget {
  final List<DescriptionList> list;
  final FontWeight fontWeight;

  const CardList({Key? key, required this.list, required this.fontWeight})
      : super(key: key);

  @override
  _CardListState createState() => _CardListState();
}

class _CardListState extends State<CardList> {
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        isLoading = false;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: isLoading ? 
      ShimmerWidget(count: widget.list.length, widthCard: 85, heightCard: 85)
      : ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.list.length,
        padding: const EdgeInsets.only(left: 10),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 9.0),
            child: Column(
              children: [
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    widget.list[index].url,
                    height: 85,
                    width: 85,
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.symmetric(vertical: 5),
                ),
                Container(
                  width: 90,
                  alignment: Alignment.center,
                  child: Text(widget.list[index].description,
                      style: TextStyle(
                        color: HexColor('#474747'),
                        fontSize: 12,
                        fontWeight: widget.fontWeight,
                      )),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
