import 'package:flutter/material.dart';
import 'package:playtogether_hirer/models/hirer_model.dart';
import 'package:playtogether_hirer/models/login_model.dart';
import 'package:playtogether_hirer/models/player_model.dart';
import 'package:playtogether_hirer/services/player_service.dart';
import 'package:playtogether_hirer/widgets/app_bar_home.dart';
import 'package:playtogether_hirer/widgets/bottom_bar.dart';
import 'package:playtogether_hirer/widgets/player_card.dart';

class HomePage extends StatefulWidget {
  final HirerModel hirerModel;
  final LoginModel loginModel;
  //static String routeName = 'HomePage';
  const HomePage({
    Key? key,
    required this.hirerModel,
    required this.loginModel,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PlayerService playerApi = PlayerService();

  List<PlayerModel>? playerList;

  Future loadList() {
    playerList ??= [];
    Future<List<PlayerModel>?> futureCases =
        playerApi.getModels(widget.loginModel.message);
    futureCases.then((_playerList) {
      if (mounted) {
        setState(() {
          playerList = _playerList;
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
          padding: const EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 10, left: 10),
                ),
                const SizedBox(
                  height: 5,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
                  child: Row(children: [
                    Text(
                      "Thuê lại lần nữa",
                      style: TextStyle(
                        fontSize: 18 / 400 * size.width,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: const Icon(Icons.arrow_circle_down_outlined),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                            height: 200.0,
                            child: FutureBuilder(
                                future: loadList(),
                                builder: (context, snapshot) {
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: playerList == null
                                        ? 0
                                        : playerList!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
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
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
                  child: Row(children: [
                    Text(
                      "Có thể bạn sẽ thích",
                      style: TextStyle(
                        fontSize: 18 / 400 * size.width,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: const Icon(Icons.arrow_circle_down_outlined),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                            height: 200.0,
                            child: FutureBuilder(
                                future: loadList(),
                                builder: (context, snapshot) {
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: playerList == null
                                        ? 0
                                        : playerList!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
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
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
                  child: Row(children: [
                    Text(
                      "Đề xuất cho bạn",
                      style: TextStyle(
                        fontSize: 18 / 400 * size.width,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: const Icon(Icons.arrow_circle_down_outlined),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                            height: 200.0,
                            child: FutureBuilder(
                                future: loadList(),
                                builder: (context, snapshot) {
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: playerList == null
                                        ? 0
                                        : playerList!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
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
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
                  child: Row(children: [
                    Text(
                      "Top ưa thích",
                      style: TextStyle(
                        fontSize: 18 / 400 * size.width,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    GestureDetector(
                      child: const Icon(Icons.arrow_circle_down_outlined),
                    ),
                  ]),
                ),
                const SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                            height: 200.0,
                            child: FutureBuilder(
                                future: loadList(),
                                builder: (context, snapshot) {
                                  return ListView.builder(
                                    scrollDirection: Axis.horizontal,
                                    itemCount: playerList == null
                                        ? 0
                                        : playerList!.length,
                                    itemBuilder:
                                        (BuildContext context, int index) {
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
                const SizedBox(
                  height: 10,
                ),
              ]),
        ),
        bottomNavigationBar: BottomBar(
          hirerModel: widget.hirerModel,
          loginModel: widget.loginModel,
          bottomBarIndex: 0,
        ),
      ),
    );

    // return Scaffold(
    //   appBar: Appbar(height: 70, titles: "Home", onPressedSearch: () {}),
    //   body: SingleChildScrollView(
    //     padding: EdgeInsets.all(10),
    //     child: Column(
    //         mainAxisAlignment: MainAxisAlignment.start,
    //         crossAxisAlignment: CrossAxisAlignment.start,
    //         children: [
    //           Container(
    //             margin: EdgeInsets.only(top: 10, left: 10),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           // Text("Hello" + widget.hirerModel.lastname),
    //           Padding(
    //             padding:
    //                 EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
    //             child: Row(
    //                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     "Thuê lại lần nữa",
    //                     style: TextStyle(
    //                       fontSize: 18 / 400 * size.width,
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     width: 10,
    //                   ),
    //                   GestureDetector(
    //                     onTap: () {
    //                       print(demoPlayer[0].name);
    //                     },
    //                     child: Icon(Icons.arrow_circle_down_outlined),
    //                   ),
    //                 ]),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           SingleChildScrollView(
    //             child: new Row(
    //               children: <Widget>[
    //                 Expanded(
    //                   child: SizedBox(
    //                     height: 200.0,
    //                     child: new ListView.builder(
    //                       scrollDirection: Axis.horizontal,
    //                       itemCount: demoPlayer.length,
    //                       itemBuilder: (BuildContext ctxt, int index) {
    //                         return new PlayerCard(
    //                             playerModel: demoPlayer[index]);
    //                       },
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Padding(
    //             padding:
    //                 EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
    //             child: Row(
    //                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     "Có thể bạn sẽ thích",
    //                     style: TextStyle(
    //                       fontSize: 18 / 400 * size.width,
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     width: 10,
    //                   ),
    //                   GestureDetector(
    //                     onTap: () {
    //                       print(demoPlayer.length);
    //                     },
    //                     child: Icon(Icons.arrow_circle_down_outlined),
    //                   ),
    //                 ]),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           SingleChildScrollView(
    //             child: new Row(
    //               children: <Widget>[
    //                 Expanded(
    //                   child: SizedBox(
    //                     height: 200.0,
    //                     child: new ListView.builder(
    //                       scrollDirection: Axis.horizontal,
    //                       itemCount: demoPlayer.length,
    //                       itemBuilder: (BuildContext ctxt, int index) {
    //                         return new PlayerCard(
    //                             playerModel: demoPlayer[index]);
    //                       },
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Padding(
    //             padding:
    //                 EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
    //             child: Row(
    //                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     "Đề xuất cho bạn",
    //                     style: TextStyle(
    //                       fontSize: 18 / 400 * size.width,
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     width: 10,
    //                   ),
    //                   GestureDetector(
    //                     onTap: () {
    //                       print(demoPlayer.length);
    //                     },
    //                     child: Icon(Icons.arrow_circle_down_outlined),
    //                   ),
    //                 ]),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           SingleChildScrollView(
    //             child: new Row(
    //               children: <Widget>[
    //                 Expanded(
    //                   child: SizedBox(
    //                     height: 200.0,
    //                     child: new ListView.builder(
    //                       scrollDirection: Axis.horizontal,
    //                       itemCount: demoPlayer.length,
    //                       itemBuilder: (BuildContext ctxt, int index) {
    //                         return new PlayerCard(
    //                             playerModel: demoPlayer[index]);
    //                       },
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           Padding(
    //             padding:
    //                 EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
    //             child: Row(
    //                 // mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //                 children: [
    //                   Text(
    //                     "Có thể bạn sẽ thích",
    //                     style: TextStyle(
    //                       fontSize: 18 / 400 * size.width,
    //                       color: Colors.black,
    //                     ),
    //                   ),
    //                   SizedBox(
    //                     width: 10,
    //                   ),
    //                   GestureDetector(
    //                     onTap: () {
    //                       print(demoPlayer.length);
    //                     },
    //                     child: Icon(Icons.arrow_circle_down_outlined),
    //                   ),
    //                 ]),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //           SingleChildScrollView(
    //             child: new Row(
    //               children: <Widget>[
    //                 Expanded(
    //                   child: SizedBox(
    //                     height: 200.0,
    //                     child: new ListView.builder(
    //                       scrollDirection: Axis.horizontal,
    //                       itemCount: demoPlayer.length,
    //                       itemBuilder: (BuildContext ctxt, int index) {
    //                         return new PlayerCard(
    //                             playerModel: demoPlayer[index]);
    //                       },
    //                     ),
    //                   ),
    //                 ),
    //               ],
    //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             ),
    //           ),
    //           SizedBox(
    //             height: 10,
    //           ),
    //         ]),
    //   ),
    //    bottomNavigationBar: BottomBar(
    //      hirerModel: widget.hirerModel,
    //      bottomBarIndex: 0,
    //    ),
    // );
  }
}
