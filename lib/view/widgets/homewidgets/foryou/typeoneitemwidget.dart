import 'package:flutter/material.dart';

class TypeOneItemWidget extends StatefulWidget {
  const TypeOneItemWidget({Key? key}) : super(key: key);

  @override
  _TypeOneItemWidgetState createState() => _TypeOneItemWidgetState();
}

class _TypeOneItemWidgetState extends State<TypeOneItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 80.00,
              height: 80.00,
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  image: ExactAssetImage('assets/img/bg.jpg'),
                  fit: BoxFit.fitHeight,
                ),
              )),
        ),
        Container(
          width: 80.00,
          child: Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Title",
                  softWrap: true,
                ),
                Text(
                  "subTi",
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
