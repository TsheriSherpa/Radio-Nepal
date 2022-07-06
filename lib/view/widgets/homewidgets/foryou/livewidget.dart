import 'package:flutter/material.dart';

import 'liveitemwidget.dart';

class LiveWidget extends StatefulWidget {
  const LiveWidget({Key? key}) : super(key: key);

  @override
  _LiveWidgetState createState() => _LiveWidgetState();
}

class _LiveWidgetState extends State<LiveWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            LiveItemWidget(),
            LiveItemWidget(),
            LiveItemWidget(),
            LiveItemWidget(),
            LiveItemWidget(),
          ],
        ),
      ),
    );
  }
}
