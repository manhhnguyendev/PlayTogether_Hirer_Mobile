import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:playtogether_hirer/models/notification_model.dart';

class NotificationCard extends StatefulWidget {
  final NotificationModel notificationModel;
  const NotificationCard({Key? key, required this.notificationModel})
      : super(key: key);

  @override
  _NotificationCardState createState() => _NotificationCardState();
}

class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    String date =
        DateFormat('dd/MM/yyyy').format(widget.notificationModel.datetime);
    String startTime =
        DateFormat('hh:mm a').format(widget.notificationModel.datetime);
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: GestureDetector(
        onTap: () {},
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      widget.notificationModel.title,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.notificationModel.message,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    ),
                  ],
                ),
                Spacer(),
                Text(
                  date + ', ' + startTime,
                  style: TextStyle(fontSize: 15, color: Colors.black),
                ),
              ],
            ),
            Divider(
              thickness: 0.5,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
