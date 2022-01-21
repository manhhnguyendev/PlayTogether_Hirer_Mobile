import 'package:flutter/material.dart';
import 'package:playtogether_hirer/shared_component/bottom_bar.dart';

class Personal extends StatefulWidget {
  Personal({Key? key}) : super(key: key);

  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomBar(
          bottomBarIndex: 3,
        ),
      ),
    );
  }
}
