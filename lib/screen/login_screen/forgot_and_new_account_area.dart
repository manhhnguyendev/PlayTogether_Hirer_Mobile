import 'package:flutter/material.dart';
import 'package:playtogether_hirer/screen/register_screen/register_page.dart';

class ForgotPassAndCreateNewAccArea extends StatelessWidget {
  const ForgotPassAndCreateNewAccArea({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: GestureDetector(
          onTap: () => Navigator.pushNamed(context, RegisterPage.routeName),
          child: const Text(
            'Tạo tài khoản?',
            style: TextStyle(
              fontSize: 15,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ),
      Container(
        margin: const EdgeInsets.symmetric(horizontal: 15),
        child: GestureDetector(
          onTap: () {},
          child: const Text(
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
