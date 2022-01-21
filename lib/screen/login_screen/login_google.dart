import 'dart:io';

import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:playtogether_hirer/screen/home_screen/home_screen.dart';
import 'package:playtogether_hirer/helper/helper.dart' as helper;
import 'package:playtogether_hirer/screen/homescreen/home.dart';

class LoginGoogle extends StatefulWidget {
  static String routeName = "login_google";
  @override
  _GoogleButtonState createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<LoginGoogle> {
  String _message = 'You are not sign in';

  final Future<FirebaseApp> _initialization = Firebase.initializeApp();

  late FirebaseAuth _auth;
  late GoogleSignIn _googleSignIn;

  Future<User> _handleSignIn() async {
    final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication googleAuth =
        await googleUser.authentication;

    final AuthCredential credential = await GoogleAuthProvider.credential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final User user = (await _auth.signInWithCredential(credential)).user;
    print("Email: " + user.email);
    print("Name: " + user.displayName);
    print("Id Token: " + googleAuth.idToken);
    setState(() {
      _message = "You are sign in";
    });
    return user;
  }

  Future _checkLogin() async {
    final User user = _auth.currentUser;
    if (user != null) {
      setState(() {
        _message = "You are sign in";
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool login = false;
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Scaffold(
        body: FutureBuilder(
            future: _initialization,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return Text('Something went wrong');
              }

              if (snapshot.connectionState == ConnectionState.done) {
                _auth = FirebaseAuth.instance;
                _googleSignIn = GoogleSignIn();
                _checkLogin();
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 1),
                  width: size.width * 0.95,
                  height: size.height / 15,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                      //side: BorderSide(color: Colors.black, width: 1),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: FlatButton(
                        color: const Color.fromRGBO(219, 68, 50, 1),
                        //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
                        onPressed: () {
                          // dynamic result = await _handleSignIn();
                          dynamic result = _handleSignIn();
                          print("qua buoc 1");
                          print(result);
                          setState(() {
                            if (result != null) {
                              print("ko null ne em oi");
                              helper.pushInto(
                                context,
                                Home(),
                                true,
                              );
                            } else
                              print("null roi ne");
                          });
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              alignment: Alignment.center,
                              width: size.width * 0.1,
                              height: size.height * 0.1,
                              decoration: const BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/logingg.png"),
                                      fit: BoxFit.cover)),
                            ),
                            //Spacer(),
                            const Text("ĐĂNG NHẬP BẰNG GOOGLE",
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16.0)),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }
              return Container();
            }),
      ),
    );
  }
}
