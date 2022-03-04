import 'package:flutter/material.dart';
import 'package:playtogether_hirer/models/hirer_model.dart';
import 'package:playtogether_hirer/models/login_model.dart';
import 'package:playtogether_hirer/models/notification_model.dart';
import 'package:playtogether_hirer/widgets/bottom_bar.dart';
import 'package:playtogether_hirer/widgets/notification_card.dart';

class NotificationsPage extends StatefulWidget {
  static String routeName = 'NotificationPage';
  final HirerModel hirerModel;
  final LoginModel loginModel;

  const NotificationsPage(
      {Key? key, required this.hirerModel, required this.loginModel})
      : super(key: key);

  @override
  _NotificationsPageState createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          bottomOpacity: 0,
          toolbarOpacity: 1,
          toolbarHeight: 65,
          backgroundColor: Colors.white,
          elevation: 1,
          leading: CircleAvatar(
            radius: 27,
            backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/logo2-notext.png"),
          ),
          centerTitle: true,
          title: Text(
            'Thông báo',
            style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.normal),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 10),
          child: Column(
            children: List.generate(demoListNotifications.length,
                (index) => buildListNotification(demoListNotifications[index])),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        hirerModel: widget.hirerModel,
        loginModel: widget.loginModel,
        bottomBarIndex: 2,
      ),
    );
  }

  Widget buildListNotification(NotificationModel model) =>
      NotificationCard(notificationModel: model);
}
