import 'package:flutter/material.dart';
import 'package:playtogether_hirer/models/hirer_model.dart';
import 'package:playtogether_hirer/models/token_model.dart';
import 'package:playtogether_hirer/pages/hirer_profile_page.dart';
import 'package:playtogether_hirer/widgets/bottom_bar.dart';

class PersonalPage extends StatefulWidget {
  final HirerModel hirerModel;
  final TokenModel tokenModel;

  const PersonalPage({
    Key? key,
    required this.hirerModel,
    required this.tokenModel,
  }) : super(key: key);

  @override
  _PersonalPageState createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 0, 15, 15),
            child: Row(
              children: [
                const SizedBox(
                  height: 150,
                  width: 150,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        "https://firebasestorage.googleapis.com/v0/b/play-together-flutter.appspot.com/o/avatar%2Fdefault-profile-picture.jpg?alt=media&token=79641b44-454b-43e0-8c57-85d1431fcfce"),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.hirerModel.firstname +
                            ' ' +
                            widget.hirerModel.lastname,
                        style: const TextStyle(fontSize: 20),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => HirerProfilePage(
                                    hirerModel: widget.hirerModel,
                                    tokenModel: widget.tokenModel)),
                          );
                        },
                        child: Row(
                          children: const [
                            Text(
                              'Chỉnh sửa tài khoản',
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 15,
                              color: Colors.grey,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1, color: Colors.black)),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Số dư trong ví:',
                          style: TextStyle(fontSize: 18),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          widget.hirerModel.balance.toString() + ' vnđ',
                          style: const TextStyle(
                              fontSize: 22, color: Color(0xff320444)),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  Container(
                    decoration: BoxDecoration(border: Border.all()),
                    height: 70,
                    width: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: GestureDetector(
                      onTap: () {},
                      child: Column(
                        children: const [
                          Icon(
                            Icons.account_balance_wallet_outlined,
                            size: 30,
                          ),
                          SizedBox(
                            height: 0,
                          ),
                          Text(
                            'Nạp tiền',
                            style: TextStyle(
                                fontSize: 18, color: Color(0xff320444)),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 25, 15, 5),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Text(
                    'Lịch sử nạp tiền',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Text(
                    'Danh sách theo dõi',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Text(
                    'Thay đổi mật khẩu',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Text(
                    'Chính sách',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Text(
                    'Trung tâm hỗ trợ',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: GestureDetector(
              onTap: () {},
              child: Row(
                children: const [
                  Text(
                    'Đăng xuất',
                    style: TextStyle(fontSize: 20),
                  ),
                  Spacer(),
                  Icon(
                    Icons.logout,
                    color: Colors.grey,
                    size: 15,
                  ),
                ],
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
            child: Divider(
              thickness: 1,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomBar(
        hirerModel: widget.hirerModel,
        tokenModel: widget.tokenModel,
        bottomBarIndex: 3,
      ),
    );
  }
}
