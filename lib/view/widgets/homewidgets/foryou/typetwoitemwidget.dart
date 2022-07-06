import 'package:flutter/material.dart';

class TypeTwoItemWidget extends StatefulWidget {
  const TypeTwoItemWidget({Key? key}) : super(key: key);

  @override
  _TypeTwoItemWidgetState createState() => _TypeTwoItemWidgetState();
}

class _TypeTwoItemWidgetState extends State<TypeTwoItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage('assets/img/bg.jpg'),
            radius: 50,
            backgroundColor: Colors.transparent,
          ),
        ),
        Container(
          width: 140.00,
          child: Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Text(
                    "Titlesddsdsdsdsds",
                    softWrap: true,
                  ),
                ),
                Center(
                  child: Text(
                    "subTitlsdsdsdsd",
                    softWrap: true,
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
