import 'package:flutter/material.dart';
import 'package:playtogether_hirer/shared_component/bottom_bar.dart';

class Notifications extends StatefulWidget {
  Notifications({Key? key}) : super(key: key);

  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: BottomBar(
          bottomBarIndex: 2,
        ),
      ),
    );
  }
}
