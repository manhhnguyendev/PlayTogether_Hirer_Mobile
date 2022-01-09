import 'package:flutter/material.dart';
import 'package:playtogether_hirer/screen/register_screen/register_form.dart';

class RegisterPage extends StatelessWidget {
  static String routeName = "sign_up";
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
              child: SignUpForm(),
            ),
          ],
        ),
      ),
    );
  }
}
