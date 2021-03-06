import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:playtogether_hirer/models/hirer_model.dart';
import 'package:playtogether_hirer/models/login_google_model.dart';
import 'package:playtogether_hirer/models/token_model.dart';
import 'package:playtogether_hirer/pages/home_page.dart';
import 'package:playtogether_hirer/services/hirer_service.dart';
import 'package:playtogether_hirer/services/login_google_service.dart';
import 'package:playtogether_hirer/helpers/helper.dart' as helper;

class LoginGooglePage extends StatefulWidget {
  const LoginGooglePage({Key? key}) : super(key: key);
  @override
  _GoogleButtonState createState() => _GoogleButtonState();
}

class _GoogleButtonState extends State<LoginGooglePage> {
  final String providerName = "https://accounts.google.com";
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  late HirerModel hirerModel;
  late TokenModel tokenModel;
  late GoogleSignIn _googleSignIn;

  LoginGoogleModel loginGoogle =
      LoginGoogleModel(idToken: "", providerName: "");

  Widget getScreen() {
    return HomePage(
      hirerModel: hirerModel,
      tokenModel: tokenModel,
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: 70,
      alignment: Alignment.center,
      child: Scaffold(
        body: FutureBuilder(
            future: _initialization,
            builder: (context, snapshot) {
              if (snapshot.hasError) {
                return const Text('Something went wrong');
              }
              if (snapshot.connectionState == ConnectionState.done) {
                _googleSignIn = GoogleSignIn();
                return Container(
                  alignment: Alignment.center,
                  margin: const EdgeInsets.symmetric(vertical: 1),
                  width: size.width * 0.95,
                  height: size.height / 15,
                  child: Card(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: FlatButton(
                        color: const Color.fromRGBO(219, 68, 50, 1),
                        onPressed: () {
                          setState(() {
                            _googleSignIn.signIn().then((result) {
                              result.authentication.then((googleKey) {
                                loginGoogle.providerName = providerName;
                                loginGoogle.idToken = googleKey.idToken;
                                Future<TokenModel?> loginGoogleModelFuture =
                                    LoginGoogleService()
                                        .loginGoogle(loginGoogle);
                                loginGoogleModelFuture.then((value) {
                                  if (value != null) {
                                    tokenModel = value;
                                    setState(() {
                                      Future<HirerModel?> hirerModelFuture =
                                          HirerService()
                                              .getHirerProfile(value.message);
                                      print(value.message);
                                      hirerModelFuture.then((hirer) {
                                        setState(() {
                                          if (hirer != null) {
                                            hirerModel = hirer;
                                            helper.pushInto(
                                                context, getScreen(), true);
                                          }
                                        });
                                      });
                                    });
                                  }
                                });
                              });
                            });
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
                            const Text("????NG NH???P B???NG GOOGLE",
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
