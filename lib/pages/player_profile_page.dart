import 'package:flutter/material.dart';
import 'package:playtogether_hirer/models/player_model.dart';
import 'package:playtogether_hirer/pages/send_hiring_request_page.dart';

import 'package:playtogether_hirer/widgets/second_main_button.dart';

class PlayerProfilePage extends StatefulWidget {
  final PlayerModel playerModel;
  const PlayerProfilePage({Key? key, required this.playerModel})
      : super(key: key);

  @override
  State<PlayerProfilePage> createState() => _PlayerProfilePageState();
}

class _PlayerProfilePageState extends State<PlayerProfilePage> {
  String profileLink = "assets/images/defaultprofile.png";
  List listPlayerImage = [
    "assets/images/Zuto.png",
    "assets/images/Jennie.png",
    "assets/images/HangDam.png"
  ];

  List listGameAndRank = ['LOL : Kim Cuong', 'CSGO : MG', 'Among Us'];

  List listTopHirer = [
    'Vu Quoc Hung',
    'Son Tung',
    'Bich Phuong',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: FlatButton(
              child: const Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  SizedBox(
                    height: 150,
                    width: 150,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(profileLink),
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  const Text(
                    "Player name",
                    style: TextStyle(fontSize: 20),
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  const Text(
                    "status",
                    style: TextStyle(fontSize: 10),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Row(
                children: const [
                  Text(
                    'H??nh ???nh',
                    style:
                        TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Icon(
                    Icons.image,
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                  children: List.generate(listPlayerImage.length,
                      (index) => buildImageItem(listPlayerImage[index]))),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 1,
              decoration: const BoxDecoration(
                  border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.1,
                ),
              )),
            ),
            GestureDetector(
              onTap: () {},
              child: Padding(
                padding: const EdgeInsets.fromLTRB(15, 10, 0, 15),
                child: Row(
                  children: [
                    Row(
                      children: const [
                        Text(
                          '????nh gi??',
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.normal),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.yellow,
                        ),
                        Text(
                          '4.5',
                          style: TextStyle(fontSize: 15),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Row(
                        children: const [
                          Text(
                            'Xem chi ti???t',
                            style: TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.grey,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              height: 1,
              decoration: const BoxDecoration(
                  border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.1,
                ),
              )),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Th??ng tin',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Container(
              height: 1,
              decoration: const BoxDecoration(
                  border: Border(
                top: BorderSide(
                  //                   <--- left side
                  color: Colors.grey,
                  width: 0.1,
                ),
              )),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'K??? n??ng',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: List.generate(
                      listGameAndRank.length,
                      (index) =>
                          buildGameAndRankPlayer(listGameAndRank[index])),
                ),
              ),
            ),
            Container(
              height: 1,
              decoration: const BoxDecoration(
                  border: Border(
                top: BorderSide(
                  //                   <--- left side
                  color: Colors.grey,
                  width: 0.1,
                ),
              )),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 0, 0, 0),
              child: Container(
                alignment: Alignment.topLeft,
                child: const Text(
                  'Top ng?????i thu??',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.normal),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 5, 20, 20),
              child: Container(
                alignment: Alignment.topLeft,
                child: Column(
                  children: List.generate(
                      listTopHirer.length,
                      (index) =>
                          buildTopHirers(listTopHirer[index], index + 1)),
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Row(
            children: [
              const Text(
                '500.000' + '??/h',
                style: TextStyle(fontSize: 22, color: Color(0xff320444)),
              ),
              const Spacer(),
              SecondMainButton(
                  text: 'Thu??',
                  onpress: () {
                    Navigator.pushNamed(
                        context, SendHiringRequestPage.routeName);
                  },
                  height: 50,
                  width: 150),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildImageItem(String imageLink) => Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.white,
              image: DecorationImage(
                  image: AssetImage(imageLink), fit: BoxFit.cover)),
        ),
      );

  Widget buildGameAndRankPlayer(String gameAndRank) => Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Text(
                gameAndRank,
                style:
                    const TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      );

  Widget buildTopHirers(String hirerName, int count) => Padding(
        padding: const EdgeInsets.only(left: 10),
        child: Container(
          alignment: Alignment.topLeft,
          child: Column(
            children: [
              Text(
                '#' + count.toString() + '. ' + hirerName,
                style: const TextStyle(
                    fontSize: 15, fontWeight: FontWeight.normal),
              ),
              const SizedBox(
                height: 5,
              )
            ],
          ),
        ),
      );
}
