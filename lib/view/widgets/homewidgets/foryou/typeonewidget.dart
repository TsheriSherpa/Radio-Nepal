import 'package:flutter/material.dart';
import 'package:radio_nepal/view/widgets/homewidgets/foryou/typeoneitemwidget.dart';

class TypeOneWidget extends StatefulWidget {
  const TypeOneWidget({Key? key}) : super(key: key);

  @override
  _TypeOneWidgetState createState() => _TypeOneWidgetState();
}

class _TypeOneWidgetState extends State<TypeOneWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TypeOneItemWidget(),
            TypeOneItemWidget(),
            TypeOneItemWidget(),
            TypeOneItemWidget(),
            TypeOneItemWidget(),
          ],
        ),
      ),
    );
  }
}
