import 'package:flutter/material.dart';
import 'package:playtogether_hirer/model/player_model.dart';
import 'package:playtogether_hirer/screen/homescreen/player_card.dart';
import 'package:playtogether_hirer/sharedcomponent/bottom_bar.dart';
import 'package:playtogether_hirer/sharedcomponent/my_color.dart' as my_colors;

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 0,
          //   title:
        ),
        // Body app
        body: SingleChildScrollView(
          padding: EdgeInsets.all(10),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 10, left: 10),
                  child: Row(children: [
                    // avatar
                    CircleAvatar(
                      //foregroundColor: Colors.white,
                      radius: 30,
                      backgroundImage: AssetImage(
                        "lib/assets/images/playtogetherlogo.png",
                      ),
                    ),
                    SizedBox(
                      width: size.width / 25,
                    ),
                    Container(
                      width: size.width * 0.7,
                      decoration: BoxDecoration(
                        color: my_colors.secondary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        //onChanged: (value) => print(value),
                        onTap: () {},
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 30 / 375 * size.width,
                              vertical: 9 / 512 * size.height),
                          border: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          hintText: "Tìm kiếm",
                          prefixIcon: Icon(
                            Icons.search,
                            color: my_colors.secondary,
                          ),
                        ),
                      ),
                    )
                  ]),
                ),
                SizedBox(
                  height: 20,
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
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      PlayerCard(player: demoPlayer[0]),
                      PlayerCard(player: demoPlayer[1]),
                      PlayerCard(player: demoPlayer[2]),
                      // ...List.generate(
                      //   demoPlayer.length,
                      //   (index) {
                      //       if (demoPlayer[index].isHired)
                      //     PlayerCard(player: demoPlayer[index]);
                      //     return SizedBox
                      //           .shrink(); // here by default width and height is 0
                      //   },
                      // ),
                      SizedBox(width: 10),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20,
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
                  physics: ScrollPhysics(),
                  child: Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ListView.builder(
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemCount: demoPlayer.length,
                          itemBuilder: (context, index) {
                            return PlayerCard(player: demoPlayer[index]);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
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
