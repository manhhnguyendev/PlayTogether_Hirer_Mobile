import 'package:flutter/material.dart';

class TextFieldContainer extends StatelessWidget {
  final Widget child;
  const TextFieldContainer({
    Key? key,
    required this.child,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black, width: 1),
        ),
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          //padding: EdgeInsets.symmetric(vertical: 1, horizontal: size.width),
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          child: child,
        ),
      ),
    );
  }
}
