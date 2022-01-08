import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  final String text;
  final Function() onpress;
  const MainButton({
    Key? key,
    required this.text,
    required this.onpress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: 1),
      width: size.width,
      height: size.height / 15,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5),
          side: BorderSide(color: Colors.black, width: 0.1),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(5),
          child: FlatButton(
              color: Color.fromRGBO(137, 128, 255, 1),
              padding: EdgeInsets.symmetric(vertical: 10, horizontal: 40),
              onPressed: onpress,
              child:
                  // Text(text,
                  //      style: TextStyle(color: Color.fromRGBO(50, 4, 68, 0.9), fontSize: 16.0),)
                  Text(
                text,
                style: TextStyle(color: Colors.white, fontSize: 17.0),
              )),
        ),
      ),
    );
  }
}
