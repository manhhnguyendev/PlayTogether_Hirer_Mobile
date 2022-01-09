import 'package:flutter/material.dart';
import 'package:playtogether_hirer/screen/complete_profile_screen/complete_profile_form.dart';

class CompleteProfilePage extends StatelessWidget {
  static String routeName = "complete_profile";

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Container(
            width: size.width,
            height: size.height * 0.45,
            decoration: const BoxDecoration(
                color: Colors.white,
                image: DecorationImage(
                    image: AssetImage("assets/images/playtogetherlogo.png"),
                    fit: BoxFit.cover)),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: CompleteProfileForm(),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      )),
    );
  }
}
