import 'package:flutter/material.dart';
import 'package:playtogether_hirer/const.dart';
import 'package:playtogether_hirer/sharedcomponent/login_error_form.dart';
import 'package:playtogether_hirer/sharedcomponent/main_button.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({Key? key}) : super(key: key);

  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final _formKey = GlobalKey<FormState>();
  String email = "";
  String password = "";
  final List listError = [''];
  bool obsecure = true;

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
      key: _formKey,
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
                FormError(listError: listError),
                //SizedBox(height: 10,),
              ],
            ),
          ),
          MainButton(
            text: "ĐĂNG NHẬP",
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
        return;
      },

      validator: (value) {
        if ((value!.isEmpty) && !listError.contains(passNullError)) {
          addError(error: passNullError);
          return "";
        } else if (!passwordValidatorRegExp.hasMatch(value) &&
            !listError.contains(invalidPassError)) {
          addError(error: invalidPassError);
          return "";
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
                    obsecure = !obsecure;
                  }),
              icon: Icon(
                Icons.remove_red_eye,
                size: 25,
                color: Colors.black,
              ))),

      obscureText: obsecure,
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
        return;
      },
      validator: (value) {
        if ((value!.isEmpty) && !listError.contains(emailNullError)) {
          addError(error: emailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value) &&
            !listError.contains(invalidEmailError)) {
          addError(error: invalidEmailError);
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
}
