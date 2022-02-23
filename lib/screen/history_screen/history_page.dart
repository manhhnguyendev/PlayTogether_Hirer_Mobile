import 'package:flutter/material.dart';
import 'package:playtogether_hirer/model/hirer_model.dart';
import 'package:playtogether_hirer/shared_component/bottom_bar.dart';

class HistoryPage extends StatefulWidget {
  final HirerModel hirerModel;
  HistoryPage({Key? key, required this.hirerModel}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomBar(
          hirerModel: widget.hirerModel,
          bottomBarIndex: 1,
        ),
      ),
    );
  }
}
