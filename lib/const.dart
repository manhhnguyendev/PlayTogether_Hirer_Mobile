import 'package:flutter/material.dart';

// Form Error
final RegExp emailValidatorRegExp =
    RegExp(r"^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+");

final RegExp passwordValidatorRegExp =
    RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,30}$');

const String emailNullError = "- Vui lòng nhập email!";
const String invalidEmailError = "- Email nhập không đúng định dạng!";
const String passNullError = "- Vui lòng nhập mật khẩu!";
const String invalidPassError =
    "- Mật khẩu từ 8-30 kí tự, \ncó ít nhất 1 số 1 chữ hoa, 1 kí tự đặc biệt!";
const String matchPassError = "Mật khẩu xác nhận không trùng khớp!";
const String confirmNullError = "Mật khẩu xác nhận lại chưa được nhập";
const String namelNullError = "Vui lòng nhập họ tên!";
// const String kPhoneNumberNullError = "Please Enter your phone number";