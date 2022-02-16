import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:lightz/interfaces/description_list.dart';
import 'package:lightz/widgets/shimmer_widget.dart';

class BigCardList extends StatefulWidget {
  final List<DescriptionList> highlights;

  const BigCardList({Key? key, required this.highlights}) : super(key: key);

  @override
  _BigCardListState createState() => _BigCardListState();
}

class _BigCardListState extends State<BigCardList> {
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
      height: 160,
      child: isLoading ? 
      ShimmerWidget(count: widget.highlights.length, widthCard: 130, heightCard: 104)
      : ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: widget.highlights.length,
        padding: const EdgeInsets.only(left: 10),
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 6.0),
            child: Column(
              children: [
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    widget.highlights[index].url,
                    height: 104,
                    width: 130,
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                ),
                Container(
                    width: 120,
                    child: Text(widget.highlights[index].description,
                        style: TextStyle(
                          color: HexColor('#474747'),
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        )))
              ],
            ),
          );
        },
      ),
    );
  }
}
