import 'package:flutter/material.dart';
import 'package:radio_nepal/view/widgets/homewidgets/foryou/typethreeitemwidget.dart';

class TypeThreeWidget extends StatefulWidget {
  const TypeThreeWidget({Key? key}) : super(key: key);

  @override
  _TypeThreeWidgetState createState() => _TypeThreeWidgetState();
}

class _TypeThreeWidgetState extends State<TypeThreeWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            TypeThreeItemWidget(),
            TypeThreeItemWidget(),
            TypeThreeItemWidget(),
            TypeThreeItemWidget(),
            TypeThreeItemWidget(),
          ],
        ),
      ),
    );
  }
}
