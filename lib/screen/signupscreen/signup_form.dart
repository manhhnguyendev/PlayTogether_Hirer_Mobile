import 'package:flutter/material.dart';
import 'package:playtogether_hirer/const.dart';
import 'package:playtogether_hirer/sharedcomponent/loginerrorform.dart';
import 'package:playtogether_hirer/sharedcomponent/mainbutton1.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  _SignUpFromState createState() => _SignUpFromState();
}

class _SignUpFromState extends State<SignUpForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  String confirm_pass = "";
  String otpCode = "";
  final List listError = [''];
  bool passObsecure = true;
  bool confirmObsecure = true;

  void addError({String? error}) {
    if (!listError.contains(error))
      setState(() {
        listError.add(error);
      });
  }

  void removeError({String? error}) {
    if (listError.contains(error))
      setState(() {
        listError.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: [
                buildEmailField(),
                SizedBox(
                  height: 12,
                ),
                buildPasswordField(),
                SizedBox(
                  height: 12,
                ),
                buildConfirmField(),
                FormError(listError: listError),
              ],
            ),
          ),
          MainButton(
            text: "TẠO TÀI KHOẢN",
            onpress: () {
              if (_formKey.currentState == null) {
                print("_formKey.currentState is null!");
              } else if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildEmailField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && listError.contains(emailNullError)) {
          removeError(error: emailNullError);
        } else if (emailValidatorRegExp.hasMatch(value) &&
            listError.contains(invalidEmailError)) {
          removeError(error: invalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if ((value!.isEmpty || value == null) &&
            !listError.contains(emailNullError)) {
          addError(error: emailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !listError.contains(invalidEmailError)) {
          addError(error: invalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        //floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        labelText: "Email",
        hintText: "Nhập vào email",
        enabledBorder: OutlineInputBorder(
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 10,
        ),
      ),
    );
  }

  TextFormField buildPasswordField() {
    return TextFormField(
      //keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => password = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && listError.contains(passNullError)) {
          removeError(error: passNullError);
        } else if (passwordValidatorRegExp.hasMatch(value) &&
            listError.contains(invalidPassError)) {
          removeError(error: invalidPassError);
        }
        return null;
      },

      validator: (value) {
        if ((value!.isEmpty || value == null) &&
            !listError.contains(passNullError)) {
          addError(error: passNullError);
          return "";
        } else if (!passwordValidatorRegExp.hasMatch(value) &&
            !listError.contains(invalidPassError)) {
          addError(error: invalidPassError);
        }
        return null;
      },

      decoration: InputDecoration(
          //floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          labelText: "Mật khẩu",
          hintText: "Nhập vào mật khẩu",
          enabledBorder: OutlineInputBorder(
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 10,
          ),
          suffixIcon: IconButton(
              onPressed: () => setState(() {
                    passObsecure = !passObsecure;
                  }),
              icon: Icon(
                Icons.remove_red_eye,
                size: 25,
                color: Colors.black,
              ))),

      obscureText: passObsecure,
    );
  }

  TextFormField buildConfirmField() {
    return TextFormField(
      //keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => confirm_pass = newValue!,
      onChanged: (value) {
        if (value.isNotEmpty && listError.contains(passNullError)) {
          removeError(error: confirmNullError);
        } else if (value.isNotEmpty && password == confirm_pass) {
          removeError(error: matchPassError);
        }
        return null;
      },

      validator: (value) {
        if ((value!.isEmpty || value == null) &&
            !listError.contains(confirmNullError)) {
          addError(error: confirmNullError);
          return "";
        } else if (password != value) {
          addError(error: matchPassError);
          return "";
        }
        return null;
      },

      decoration: InputDecoration(
          //floatingLabelBehavior: FloatingLabelBehavior.always,
          contentPadding: EdgeInsets.symmetric(horizontal: 20),
          labelText: "Nhập lại mật khẩu",
          hintText: "Nhập lại mật khẩu",
          enabledBorder: OutlineInputBorder(
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            gapPadding: 10,
          ),
          suffixIcon: IconButton(
              onPressed: () => setState(() {
                    confirmObsecure = !confirmObsecure;
                  }),
              icon: Icon(
                Icons.remove_red_eye,
                size: 25,
                color: Colors.black,
              ))),

      obscureText: confirmObsecure,
    );
  }
}
