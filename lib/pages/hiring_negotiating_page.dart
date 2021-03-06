import 'package:flutter/material.dart';
import 'package:playtogether_hirer/pages/hiring_stage_page.dart';
import 'package:playtogether_hirer/widgets/decline_button.dart';
import 'package:playtogether_hirer/widgets/second_main_button.dart';

class HiringNegotiatingPage extends StatefulWidget {
  static String routeName = 'HiringNegotiating';

  const HiringNegotiatingPage({Key? key}) : super(key: key);

  @override
  _HiringNegotiatingPageState createState() => _HiringNegotiatingPageState();
}

class _HiringNegotiatingPageState extends State<HiringNegotiatingPage> {
  String profileLink = "assets/images/defaultprofile.png";
  String profileLink2 = "assets/images/defaultprofile.png";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.white,
        appBar:
            AppBar(backgroundColor: Colors.transparent, elevation: 0, actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.close,
                  color: Colors.black,
                )),
          ),
        ]),
        body: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'Đang chờ chấp thuận...',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
              child: Row(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(profileLink),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Player name",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Text(
                        ' •  •  ',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                      Container(
                        alignment: Alignment.topCenter,
                        width: 60,
                        height: 60,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            image: DecorationImage(
                                image: AssetImage(
                                    "assets/images/logo2-notext.png"),
                                fit: BoxFit.cover)),
                      ),
                      Text(
                        ' •  • ',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Column(
                    children: [
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(profileLink),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        "Player name2",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: Container(
                height: 1,
                decoration: BoxDecoration(
                    border: Border(
                  top: BorderSide(
                    color: Colors.grey,
                    width: 0.15,
                  ),
                )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 25, 10),
              child: Row(
                children: [
                  Text(
                    'Thời lượng thuê ',
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    ' giờ',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 15, 25, 10),
              child: Row(
                children: [
                  Text(
                    'Tổng chi phí ',
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    '1.000.000',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    ' đ',
                    style: TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              decoration: BoxDecoration(
                  border: Border(
                top: BorderSide(
                  color: Colors.grey,
                  width: 0.15,
                ),
              )),
            ),
            SizedBox(
              height: 50,
            ),
            SecondMainButton(
                text: 'Nhắn tin', onpress: () {}, height: 50, width: 250),
            SizedBox(
              height: 5,
            ),
            DeclineButton(
                text: 'Hủy yêu cầu', onpress: () {}, height: 50, width: 250),
            SecondMainButton(
                text: 'temp forward',
                onpress: () {
                  Navigator.pushNamed(context, HiringPage.routeName);
                },
                height: 50,
                width: 250),
          ],
        ));
  }
}
