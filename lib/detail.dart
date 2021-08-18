import 'package:flutter/material.dart';
import 'package:lifepet_app/DataList.dart';

class Detail extends StatelessWidget {

  final ListWords listWordsDetail;

  Detail({Key key, @required this.listWordsDetail}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(listWordsDetail.titlelist),
              Text(listWordsDetail.definitionlist),
            ],
          ),
        )
    );
  }
}