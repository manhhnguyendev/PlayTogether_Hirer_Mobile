import 'package:flutter/material.dart';
import 'package:playtogether_hirer/shared_component/bottom_bar.dart';

class PersonalPage extends StatefulWidget {
  PersonalPage({Key? key}) : super(key: key);

  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
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
