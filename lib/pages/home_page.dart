import 'package:flutter/material.dart';
import 'package:playtogether_hirer/models/hirer_model.dart';
import 'package:playtogether_hirer/models/player_model.dart';
import 'package:playtogether_hirer/services/player_service.dart';
import 'package:playtogether_hirer/widgets/app_bar_home.dart';
import 'package:playtogether_hirer/widgets/bottom_bar.dart';
import 'package:playtogether_hirer/constants/my_color.dart' as my_colors;
import 'package:playtogether_hirer/widgets/player_card.dart';

class HomePage extends StatefulWidget {
  final HirerModel hirerModel;
  //static String routeName = 'HomePage';
  const HomePage({
    Key? key,
    required this.hirerModel,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PlayerService playerApi = new PlayerService();

  List<PlayerModel>? playerList;

  Future loadList() {
    if (playerList == null) {
      playerList = [];
    }
    Future<List<PlayerModel>?> futureCases = playerApi.getModels(
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6ImVmZTA3YTliLTc5MTEtNGIzMS04NzMxLTU5Yjk1NGU3MzRlZCIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiZWZlMDdhOWItNzkxMS00YjMxLTg3MzEtNTliOTU0ZTczNGVkIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Im1hbmhuZ3V5ZW5AZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZW1haWxhZGRyZXNzIjoibWFuaG5ndXllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJoaXJlciIsImV4cCI6MTY0NjI5MDYzOX0.O63bqw6RzBygAsYwgX1EFKpb7uXZS2JHP1ofM3CoZss");
    futureCases.then((_playerList) {
      if (this.mounted) {
        setState(() {
          this.playerList = _playerList;
          // print(userList.length);
        });
      }
    });
    return futureCases;
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: Appbar(height: 70, titles: "Home", onPressedSearch: () {}),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                ),
                SizedBox(
                  height: 10,
                ),
                // Text("Hello" + widget.hirerModel.lastname),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Thuê lại lần nữa",
                          style: TextStyle(
                            fontSize: 18 / 400 * size.width,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          child: Icon(Icons.arrow_circle_down_outlined),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  // ignore: unnecessary_new
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                            height: 200.0,
                            child: FutureBuilder(
                                future: loadList(),
                                builder: (context, snapshot) {
                                  // ignore: unnecessary_new
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: playerList == null
                                        ? 0
                                        : playerList!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
                                      // ignore: unnecessary_new
                                      return PlayerCard(
                                          playerModel: playerList![index]);
                                    },
                                  );
                                })),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),

                SizedBox(
                  height: 10,
                ),
              ]),
        ),
        bottomNavigationBar: BottomBar(
          hirerModel: widget.hirerModel,
          bottomBarIndex: 0,
        ),
      ),
    );
  }
}
