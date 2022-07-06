import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:radio_nepal/core/controller/home_controller.dart';
import 'package:radio_nepal/view/widgets/homewidgets/foryou/livewidget.dart';
import 'package:radio_nepal/view/widgets/homewidgets/foryou/typeonewidget.dart';
import 'package:radio_nepal/view/widgets/homewidgets/foryou/typethreewidget.dart';
import 'package:radio_nepal/view/widgets/homewidgets/foryou/typetwowidget.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<HomeController>(
      builder: (controller) {
        if (controller.isLoading) {
          return CircularProgressIndicator();
        }
        var data = controller.data.response;
        return ListView(
          shrinkWrap: true,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 20.0),
              height: 50,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  tab("For You"),
                  tab("News"),
                  tab("Radio"),
                  tab("Songs"),
                  tab("Story"),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data?.name ?? ''),
                  LiveWidget(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data?.name ?? ''),
                  TypeOneWidget(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data?.name ?? ''),
                  TypeTwoWidget(),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 0, 10, 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(data?.name ?? ''),
                  TypeThreeWidget(),
                ],
              ),
            ),
          ],
        );
      },
    );
  }

  Container tab(String s) {
    return Container(
        margin: EdgeInsets.fromLTRB(10, 0, 10, 0),
        decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.all(Radius.circular(10.0))),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
          child: Center(
            child: Text(
              s,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ));
  }
}
