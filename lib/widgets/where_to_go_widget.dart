// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables
import 'package:flutter/material.dart';

class WhereToGo extends StatefulWidget {
  const WhereToGo({Key? key}) : super(key: key);

  @override
  _WhereToGoState createState() => _WhereToGoState();
}

class _WhereToGoState extends State<WhereToGo> {
  final double margins = 25.0;
  final double containersWidth = 270;
  List<Subtitle> subtitles = [
    Subtitle(
        description: 'Restaurantes',
        url:
            'https://images.unsplash.com/photo-1559329007-40df8a9345d8?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=774&q=80'),
    Subtitle(
        description: 'Bares',
        url:
            'https://images.unsplash.com/photo-1525268323446-0505b6fe7778?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=2500&q=80'),
    Subtitle(
        description: 'Pubs',
        url:
            'https://images.unsplash.com/photo-1593887937265-2a09787dcc19?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1771&q=80'),
    Subtitle(description: 'Lounge', url: 'https://placeimg.com/640/480/any')
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 6.0),
            // color: Colors.tealAccent,
            child: Column(
              children: [
                Card(
                  semanticContainer: true,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.network(
                    'https://placeimg.com/640/480/any',
                    height: 80,
                    width: 90,
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  elevation: 5,
                  margin: EdgeInsets.all(10),
                ),
                ...subtitles.map((product) {
                  return Text(product.description);
                }).toList(),
              ],
            ),
          );
        },
      ),
    );
    // return SizedBox(
    //   height: 100,
    //   child: ListView(
    //     scrollDirection: Axis.horizontal,
    //     children: [
    //       Card(
    //         semanticContainer: true,
    //         clipBehavior: Clip.antiAliasWithSaveLayer,
    //         child: Image.network(
    //           'https://cdn.pixabay.com/photo/2018/07/14/15/27/cafe-3537801_1280.jpg',
    //           fit: BoxFit.cover,
    //         ),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(10.0),
    //         ),
    //         elevation: 5,
    //         margin: EdgeInsets.all(10),
    //       ),
    //       Card(
    //         semanticContainer: true,
    //         clipBehavior: Clip.antiAliasWithSaveLayer,
    //         child: Image.network(
    //           'https://cdn.pixabay.com/photo/2016/11/18/14/05/brick-wall-1834784_1280.jpg',
    //           fit: BoxFit.fill,
    //         ),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(10.0),
    //         ),
    //         elevation: 5,
    //         margin: EdgeInsets.all(10),
    //       ),
    //       Card(
    //         semanticContainer: true,
    //         clipBehavior: Clip.antiAliasWithSaveLayer,
    //         child: Image.network(
    //           'https://cdn.pixabay.com/photo/2016/11/18/22/21/restaurant-1837150_1280.jpg',
    //           fit: BoxFit.fill,
    //         ),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(10.0),
    //         ),
    //         elevation: 5,
    //         margin: EdgeInsets.all(10),
    //       ),
    //       Card(
    //         semanticContainer: true,
    //         clipBehavior: Clip.antiAliasWithSaveLayer,
    //         child: Image.network(
    //           'https://cdn.pixabay.com/photo/2013/11/12/01/29/bar-209148_1280.jpg',
    //           fit: BoxFit.fill,
    //         ),
    //         shape: RoundedRectangleBorder(
    //           borderRadius: BorderRadius.circular(10.0),
    //         ),
    //         elevation: 5,
    //         margin: EdgeInsets.all(10),
    //       )
    //     ],
    //   ),
    // );
  }
}

class Subtitle {
  String description;
  String url;

  Subtitle({required this.description, required this.url});
}
