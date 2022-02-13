import 'package:flutter/material.dart';
import 'package:playtogether_hirer/model/player_model.dart';
import 'package:playtogether_hirer/screen/home_screen/app_bar_home.dart';
import 'package:playtogether_hirer/screen/home_screen/player_card.dart';
import 'package:playtogether_hirer/shared_component/bottom_bar.dart';
import 'package:playtogether_hirer/shared_component/my_color.dart' as my_colors;

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                // Container(
                //   margin: EdgeInsets.only(top: 10, left: 10),
                //   child: Row(children: [
                //     // avatar
                //     CircleAvatar(
                //       backgroundColor: Colors.white,
                //       radius: 30,
                //       backgroundImage: AssetImage(
                //         "assets/images/playtogetherlogo.png",
                //       ),
                //     ),
                //     SizedBox(
                //       width: size.width / 25,
                //     ),
                //     Container(
                //       width: size.width * 0.7,
                //       decoration: BoxDecoration(
                //         color: my_colors.secondary.withOpacity(0.1),
                //         borderRadius: BorderRadius.circular(15),
                //       ),
                //       child: TextField(
                //         //onChanged: (value) => print(value),
                //         onTap: () {},
                //         decoration: InputDecoration(
                //           contentPadding: EdgeInsets.symmetric(
                //               horizontal: 30 / 375 * size.width,
                //               vertical: 9 / 512 * size.height),
                //           border: InputBorder.none,
                //           focusedBorder: InputBorder.none,
                //           enabledBorder: InputBorder.none,
                //           hintText: "Tìm kiếm",
                //           prefixIcon: Icon(
                //             Icons.search,
                //             color: my_colors.secondary,
                //           ),
                //         ),
                //       ),
                //     )
                //   ]),
                // ),
                SizedBox(
                  height: 10,
                ),
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
                          onTap: () {
                            print(demoPlayer[0].name);
                          },
                          child: Icon(Icons.arrow_circle_down_outlined),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: 200.0,
                          child: new ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: demoPlayer.length,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return new PlayerCard(player: demoPlayer[index]);
                            },
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Có thể bạn sẽ thích",
                          style: TextStyle(
                            fontSize: 18 / 400 * size.width,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            print(demoPlayer.length);
                          },
                          child: Icon(Icons.arrow_circle_down_outlined),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: 200.0,
                          child: new ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: demoPlayer.length,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return new PlayerCard(player: demoPlayer[index]);
                            },
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Đề xuất cho bạn",
                          style: TextStyle(
                            fontSize: 18 / 400 * size.width,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            print(demoPlayer.length);
                          },
                          child: Icon(Icons.arrow_circle_down_outlined),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: 200.0,
                          child: new ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: demoPlayer.length,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return new PlayerCard(player: demoPlayer[index]);
                            },
                          ),
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 20 / 375 * size.width),
                  child: Row(
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Có thể bạn sẽ thích",
                          style: TextStyle(
                            fontSize: 18 / 400 * size.width,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            print(demoPlayer.length);
                          },
                          child: Icon(Icons.arrow_circle_down_outlined),
                        ),
                      ]),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  child: new Row(
                    children: <Widget>[
                      Expanded(
                        child: SizedBox(
                          height: 200.0,
                          child: new ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: demoPlayer.length,
                            itemBuilder: (BuildContext ctxt, int index) {
                              return new PlayerCard(player: demoPlayer[index]);
                            },
                          ),
                        ),
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
          bottomBarIndex: 0,
        ),
      ),
    );
  }
}
