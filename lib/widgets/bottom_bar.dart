import 'package:flutter/material.dart';
import 'package:playtogether_hirer/helpers/helper.dart' as helper;
import 'package:playtogether_hirer/constants/my_color.dart' as my_colors;
import 'package:playtogether_hirer/models/hirer_model.dart';
import 'package:playtogether_hirer/pages/history_page.dart';
import 'package:playtogether_hirer/pages/home_page.dart';
import 'package:playtogether_hirer/pages/notification_page.dart';
import 'package:playtogether_hirer/pages/user_account_page.dart';

class BottomBar extends StatefulWidget {
  final int bottomBarIndex;
  final HirerModel hirerModel;
  BottomBar({Key? key, required this.bottomBarIndex, required this.hirerModel})
      : super(key: key);

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: my_colors.primary,
      unselectedItemColor: my_colors.secondary,
      currentIndex: widget.bottomBarIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined, size: 30),
          activeIcon: Icon(Icons.home, size: 30),
          label: "Trang chủ",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.text_snippet_outlined, size: 30),
          activeIcon: Icon(Icons.text_snippet, size: 30),
          label: "Lịch sử",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.notifications_outlined, size: 30),
          activeIcon: Icon(Icons.notifications, size: 30),
          label: "Thông báo",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outlined, size: 30),
          activeIcon: Icon(Icons.person, size: 30),
          label: "Cá nhân",
        ),
      ],
      // press for switch tab
      onTap: (index) {
        if (index != widget.bottomBarIndex) {
          bool isRightToLeft = false;
          if (index > widget.bottomBarIndex) {
            isRightToLeft = true;
          }
          if (index == 0) {
            helper.pushInto(
              context,
              HomePage(
                  //hirerModel: widget.hirerModel,
                  ),
              isRightToLeft,
            );
          } else if (index == 1) {
            //===================================================================================

            helper.pushInto(
              context,
              HistoryPage(
                  // hirerModel: widget.hirerModel,
                  ),
              isRightToLeft,
            );
            //===================================================================================
          } else if (index == 2) {
            helper.pushInto(
              context,
              NotificationsPage(
                  //hirerModel: widget.hirerModel,
                  ),
              isRightToLeft,
            );
          } else if (index == 3) {
            helper.pushInto(
              context,
              UserAccountPage(
                  //hirerModel: widget.hirerModel,
                  ),
              isRightToLeft,
            );
          }
        }
      },
    );
  }
}
