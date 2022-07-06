import 'package:flutter/material.dart';

class LiveItemWidget extends StatefulWidget {
  const LiveItemWidget({Key? key}) : super(key: key);

  @override
  _LiveItemWidgetState createState() => _LiveItemWidgetState();
}

class _LiveItemWidgetState extends State<LiveItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              width: 140.00,
              height: 140.00,
              padding: const EdgeInsets.symmetric(
                horizontal: 8,
                vertical: 8,
              ),
              child: Stack(children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [Text("On Air"), Text("TitlePranishan")],
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                      width: 40.00,
                      height: 40.00,
                      decoration: new BoxDecoration(
                        image: new DecorationImage(
                          image: AssetImage('assets/img/bg.jpg'),
                          fit: BoxFit.fitHeight,
                        ),
                      )),
                )
              ]),
              decoration: new BoxDecoration(
                image: new DecorationImage(
                  colorFilter: new ColorFilter.mode(
                      Colors.black.withOpacity(0.5), BlendMode.dstATop),
                  image: AssetImage('assets/img/bg.jpg'),
                  fit: BoxFit.fitHeight,
                ),
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8, 4, 8, 4),
          child: Container(
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
                    "subTitle ",
                    softWrap: true,
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
