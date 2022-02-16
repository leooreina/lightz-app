import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:shimmer/shimmer.dart';

class ShimmerWidget extends StatefulWidget {
  final int? count;
  final double? widthCard;
  final double? heightCard;

  const ShimmerWidget({Key? key, 
    required this.count,
    required this.widthCard,
    required this.heightCard, 
  }) : super(key: key);

  @override
  State<ShimmerWidget> createState() => _ShimmerWidgetState();
}

class _ShimmerWidgetState extends State<ShimmerWidget> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
        horizontal: 10,
      ),
      itemCount: widget.count,
      scrollDirection: Axis.horizontal,
      itemBuilder: (BuildContext context, int index) {
        return Shimmer.fromColors(
          baseColor: const Color(0xffe6e6ec),
          highlightColor: HexColor('#f0f0fa'),
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 9.0),
            child: Column(
              children: [
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: SizedBox(
                    height: widget.heightCard,
                    width: widget.widthCard,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  elevation: 5,
                  margin: const EdgeInsets.symmetric(vertical: 5),
                ),
                Container(
                  alignment: Alignment.center,
                  height: 10,
                  width: widget.widthCard,
                  decoration: const BoxDecoration(
                    color: Color(0xffe6e6ec),
                    borderRadius: BorderRadius.all(
                      Radius.circular(5.0)
                    )
                  )
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
