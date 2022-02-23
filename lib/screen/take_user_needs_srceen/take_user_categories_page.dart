import 'package:flutter/material.dart';
import 'package:playtogether_hirer/screen/take_user_needs_srceen/take_user_categories_form.dart';

class UserCategoriesPage extends StatelessWidget {
  static String routeName = 'user_needs_page1';

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
              child: UserCategoriesForm(),
            ),
          ],
        ),
      ),
    );
  }
}
