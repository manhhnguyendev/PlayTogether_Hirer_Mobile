import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:playtogether_hirer/models/hiring_model.dart';
import 'package:playtogether_hirer/pages/history_hiring_detail_page.dart';

class HistoryHiringCard extends StatefulWidget {
  final HistoryHiringModel historyHiringModel;
  const HistoryHiringCard({Key? key, required this.historyHiringModel})
      : super(key: key);

  @override
  _HistoryHiringCardState createState() => _HistoryHiringCardState();
}

class _HistoryHiringCardState extends State<HistoryHiringCard> {
  final formatCurrency = NumberFormat.simpleCurrency(locale: 'vi');
  @override
  Widget build(BuildContext context) {
    String date =
        DateFormat('dd/MM/yyyy').format(widget.historyHiringModel.datetime);
    String startTime =
        DateFormat('hh:mm a').format(widget.historyHiringModel.datetime);
    return Container(
      padding: EdgeInsets.fromLTRB(15, 5, 15, 5),
      child: GestureDetector(
        onTap: () {
          Navigator.pushNamed(context, HistoryHiringDetail.routeName);
        },
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.historyHiringModel.name,
                      style: TextStyle(fontSize: 18, color: Colors.black),
                    ),
                    SizedBox(height: 5),
                    Text(
                      date + ', ' + startTime,
                      style: TextStyle(fontSize: 15, color: Colors.grey),
                    )
                  ],
                ),
                Spacer(),
                Text(
                  '${formatCurrency.format(widget.historyHiringModel.totalPrice)}',
                  style: TextStyle(fontSize: 18, color: Colors.black),
                ),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Container(
                  child: GestureDetector(
                    onTap: () {},
                    child: Row(
                      children: [
                        Text(
                          '?????t l???i ',
                          style:
                              TextStyle(fontSize: 15, color: Color(0xff8980FF)),
                        ),
                        Icon(
                          Icons.arrow_forward,
                          size: 20,
                          color: Color(0xff8980FF),
                        )
                      ],
                    ),
                  ),
                ),
                Spacer(),
                createStatus(widget.historyHiringModel.status),
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(border: Border.all(width: 0.1)),
            ),
          ],
        ),
      ),
    );
  }

  Widget createStatus(String status) {
    if (status == 'Processing') {
      return Text(
        '??ang thu??',
        style: TextStyle(fontSize: 15, color: Colors.yellow),
      );
    }

    if (status == 'Complete') {
      return Text(
        'Ho??n th??nh',
        style: TextStyle(fontSize: 15, color: Colors.green),
      );
    }

    if (status == 'Cancel') {
      return Text(
        'B??? t??? ch???i',
        style: TextStyle(fontSize: 15, color: Colors.grey),
      );
    }

    return Text(
      status,
      style: TextStyle(fontSize: 15, color: Colors.black),
    );
  }
}
