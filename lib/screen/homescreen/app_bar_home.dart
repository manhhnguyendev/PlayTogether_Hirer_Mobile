import 'package:flutter/material.dart';
import 'package:playtogether_hirer/shared_component/my_color.dart' as my_colors;

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final double height;
  final String titles;

  //final PreferredSizeWidget? bottomAppBar;
  final void Function() onPressedSearch;
  Appbar(
      {Key? key,
      required this.height,
      required this.titles,
      //required this.isShowBackBtn,
      //this.bottomAppBar,
      required this.onPressedSearch})
      : super(key: key);
  Size get preferredSize => Size.fromHeight(height);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AppBar(
      backgroundColor: Colors.white,
      bottomOpacity: 0,
      toolbarOpacity: 1,
      toolbarHeight: 65,
      title: Container(
        margin: EdgeInsets.only(top: 10, left: 10),
        child: Row(children: [
          // avatar
          CircleAvatar(
            //foregroundColor: Colors.white,
            radius: 27, backgroundColor: Colors.white,
            backgroundImage: AssetImage("assets/images/playtogetherlogo.png"),
          ),
          SizedBox(
            width: size.width / 25,
          ),
          Container(
            width: size.width * 0.7,
            decoration: BoxDecoration(
              color: my_colors.secondary.withOpacity(0.1),
              borderRadius: BorderRadius.circular(15),
            ),
            child: TextField(
              //onChanged: (value) => print(value),
              onTap: () {},
              decoration: InputDecoration(
                contentPadding: EdgeInsets.symmetric(
                    horizontal: 30 / 375 * size.width,
                    vertical: 9 / 512 * size.height),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none,
                hintText: "Tìm kiếm",
                prefixIcon: Icon(
                  Icons.search,
                  color: my_colors.secondary,
                ),
              ),
            ),
          )
        ]),
      ),
      // bottom: bottomAppBar,
    );
  }
}
