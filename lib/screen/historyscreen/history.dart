import 'package:flutter/material.dart';
import 'package:playtogether_hirer/sharedcomponent/bottom_bar.dart';

class History extends StatefulWidget {
  History({Key? key}) : super(key: key);

  @override
  _HistoryState createState() => _HistoryState();
}

class _HistoryState extends State<History> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomBar(
          bottomBarIndex: 1,
        ),
      ),
    );
  }
}
