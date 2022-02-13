import 'package:flutter/material.dart';
import 'package:playtogether_hirer/shared_component/bottom_bar.dart';

class HistoryPage extends StatefulWidget {
  HistoryPage({Key? key}) : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
