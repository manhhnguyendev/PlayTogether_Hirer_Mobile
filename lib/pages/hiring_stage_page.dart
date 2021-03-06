import 'package:flutter/material.dart';
import 'package:playtogether_hirer/pages/rating_comment_player_page.dart';
import 'package:playtogether_hirer/widgets/countdown_widget.dart';
import 'package:playtogether_hirer/widgets/decline_button.dart';
import 'package:playtogether_hirer/widgets/second_main_button.dart';

class HiringPage extends StatefulWidget {
  static String routeName = 'HiringStage';

  const HiringPage({Key? key}) : super(key: key);

  @override
  _HiringPageState createState() => _HiringPageState();
}

class _HiringPageState extends State<HiringPage> with TickerProviderStateMixin {
  String profileLink = "assets/images/defaultprofile.png";
  String profileLink2 = "assets/images/defaultprofile.png";

  late AnimationController controller;
  int hour = 2;
  double progress = 1.0;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: hour * 60 * 60),
    );

    controller.addListener(() {
      if (controller.isAnimating) {
        setState(() {
          progress = controller.value;
        });
      } else {
        setState(() {
          progress = 1.0;
          isPlaying = false;
        });
      }
    });
    controller.reverse(from: controller.value == 0 ? 1.0 : controller.value);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  String get countText {
    Duration count = controller.duration! * controller.value;
    return controller.isDismissed
        ? '${controller.duration!.inHours}:${(controller.duration!.inMinutes % 60).toString().padLeft(2, '0')}:${(controller.duration!.inSeconds % 60).toString().padLeft(2, '0')}'
        : '${count.inHours}:${(count.inMinutes % 60).toString().padLeft(2, '0')}:${(count.inSeconds % 60).toString().padLeft(2, '0')}';
  }

  bool isPlaying = false;
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
                '??ang thu??',
                style: TextStyle(fontSize: 20, color: Colors.red),
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
                        "Hirer Name",
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
                    'Th???i l?????ng thu?? ',
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    '2',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    ' gi???',
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
                    'T???ng chi ph?? ',
                    style: TextStyle(fontSize: 18),
                  ),
                  Spacer(),
                  Text(
                    '1.000.000',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text(
                    ' ??',
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
              height: 20,
            ),
            Container(
              alignment: Alignment.center,
              child: Column(
                children: [
                  Text(
                    'Th???i gian c??n l???i:',
                    style: TextStyle(fontSize: 18),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Container(
                    child: AnimatedBuilder(
                      animation: controller,
                      builder: (context, child) => Text(
                        countText,
                        style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
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
              height: 40,
            ),
            SecondMainButton(
                text: 'Nh???n tin', onpress: () {}, height: 50, width: 250),
            SizedBox(
              height: 5,
            ),
            DeclineButton(
                text: 'K???t th??c s???m', onpress: () {}, height: 50, width: 250),
            SecondMainButton(
                text: 'temp forward',
                onpress: () {
                  Navigator.pushNamed(context, RatingAndCommentPage.routeName);
                },
                height: 50,
                width: 250),
          ],
        ));
  }
}
