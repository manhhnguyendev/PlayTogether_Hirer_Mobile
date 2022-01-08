import 'package:flutter/material.dart';
import 'package:playtogether_hirer/screen/signupscreen/signup_page.dart';

class ForgotPassAndCreateNewAccArea extends StatelessWidget {
  const ForgotPassAndCreateNewAccArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, SignupPage.routeName),
          child: Text(
            'Tạo tài khoản?',
            style: TextStyle(
              fontSize: 15,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        child: GestureDetector(
          onTap: () {},
          child: Text(
            'Quên mật khẩu?',
            style: TextStyle(
              fontSize: 15,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
    ]);
  }
}
