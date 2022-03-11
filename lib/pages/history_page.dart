import 'package:flutter/material.dart';
import 'package:playtogether_hirer/models/hirer_model.dart';
import 'package:playtogether_hirer/models/hiring_model.dart';
import 'package:playtogether_hirer/models/token_model.dart';
import 'package:playtogether_hirer/pages/history_hiring_card.dart';
import 'package:playtogether_hirer/widgets/bottom_bar.dart';

class HistoryPage extends StatefulWidget {
  static String routeName = 'HistoryHiring';
  final HirerModel hirerModel;
  final TokenModel tokenModel;

  const HistoryPage(
      {Key? key, required this.hirerModel, required this.tokenModel})
      : super(key: key);

  @override
  _HistoryPageState createState() => _HistoryPageState();
}

class _HistoryPageState extends State<HistoryPage> {
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
            'Lịch sử hoạt động',
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
            children: List.generate(demoHistoryHiring.length,
                (index) => buildListHistory(demoHistoryHiring[index])),
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(
        hirerModel: widget.hirerModel,
        tokenModel: widget.tokenModel,
        bottomBarIndex: 1,
      ),
    );
  }

  Widget buildListHistory(HistoryHiringModel model) =>
      HistoryHiringCard(historyHiringModel: model);
}
