import 'package:flutter/material.dart';
import 'package:playtogether_hirer/shared_component/bottom_bar.dart';

class NotificationsPage extends StatefulWidget {
  NotificationsPage({Key? key}) : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
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
