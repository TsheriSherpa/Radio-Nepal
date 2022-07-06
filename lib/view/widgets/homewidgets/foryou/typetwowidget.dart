import 'package:flutter/material.dart';
import 'package:radio_nepal/view/widgets/homewidgets/foryou/typetwoitemwidget.dart';

class TypeTwoWidget extends StatefulWidget {
  const TypeTwoWidget({Key? key}) : super(key: key);

  @override
  _TypeTwoWidgetState createState() => _TypeTwoWidgetState();
}

class _TypeTwoWidgetState extends State<TypeTwoWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TypeTwoItemWidget(),
            TypeTwoItemWidget(),
            TypeTwoItemWidget(),
            TypeTwoItemWidget(),
            TypeTwoItemWidget(),
          ],
        ),
      ),
    );
  }
}
