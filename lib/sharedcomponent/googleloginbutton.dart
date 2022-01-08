import 'package:flutter/material.dart';

class GoogleButton extends StatelessWidget {
  final Function onpress;
  const GoogleButton({
    Key? key,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1),
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
            color: Color.fromRGBO(219, 68, 50, 1),
            //padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  alignment: Alignment.center,
                  width: size.width * 0.1,
                  height: size.height * 0.1,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/images/logingg.png"),
                          fit: BoxFit.cover)),
                ),
                //Spacer(),
                Text("ĐĂNG NHẬP BẰNG GOOGLE",
                    style: TextStyle(color: Colors.white, fontSize: 16.0)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
