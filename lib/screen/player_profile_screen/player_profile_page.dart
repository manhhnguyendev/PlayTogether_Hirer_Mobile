import 'package:flutter/material.dart';
import 'package:playtogether_hirer/screen/player_profile_screen/player_profile_details.dart';
import 'package:playtogether_hirer/screen/send_hiring_request_srceen/send_hiring_request_page.dart';
import 'package:playtogether_hirer/shared_component/second_main_button.dart';

class PlayerProfilePage extends StatefulWidget {
  static String routeName = "PlayerProfile";
  @override
  State<PlayerProfilePage> createState() => _PlayerProfilePageState();
}

class _PlayerProfilePageState extends State<PlayerProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(50),
        child: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 0, 0),
            child: FlatButton(
              child: Icon(Icons.arrow_back_ios),
              onPressed: () {},
            ),
          ),
        ),
      ),
      body: PlayerProfileDetail(),
      bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          child: Row(
            children: [
              Text(
                '500.000' + 'đ/h',
                style: TextStyle(fontSize: 22, color: Color(0xff320444)),
              ),
              Spacer(),
              SecondMainButton(
                  text: 'Thuê',
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
}
