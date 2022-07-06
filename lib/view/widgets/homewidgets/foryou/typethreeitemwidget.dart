import 'package:flutter/material.dart';

class TypeThreeItemWidget extends StatefulWidget {
  const TypeThreeItemWidget({Key? key}) : super(key: key);

  @override
  _TypeThreeItemWidgetState createState() => _TypeThreeItemWidgetState();
}

class _TypeThreeItemWidgetState extends State<TypeThreeItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Stack(
            children: [
              Container(
                  width: 140.00,
                  height: 140.00,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 8,
                    vertical: 8,
                  ),
                  decoration: new BoxDecoration(
                    image: new DecorationImage(
                      image: AssetImage('assets/img/bg.jpg'),
                      fit: BoxFit.fitHeight,
                    ),
                  )),
              Positioned(
                right: 1,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Container(
                      width: 60.00,
                      height: 140.00,
                      color: Colors.black54,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.playlist_add),
                        Text(
                          "100",
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          width: 140.00,
          child: Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Titles ",
                  softWrap: true,
                ),
                Text(
                  "subTitle",
                  softWrap: true,
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
