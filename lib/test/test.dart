// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:playtogether_hirer/test/test_player_model.dart';
import 'package:playtogether_hirer/test/test_player_service.dart';

class Test extends StatefulWidget {
  Test({Key? key}) : super(key: key);

  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> {
  final TestService testApi = new TestService();

  List<TestModel>? testList;

  Future loadList() {
    if (testList == null) {
      testList = [];
    }
    Future<List<TestModel>?> futureCases = testApi.getModels(
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJJZCI6ImVmZTA3YTliLTc5MTEtNGIzMS04NzMxLTU5Yjk1NGU3MzRlZCIsImh0dHA6Ly9zY2hlbWFzLnhtbHNvYXAub3JnL3dzLzIwMDUvMDUvaWRlbnRpdHkvY2xhaW1zL25hbWVpZGVudGlmaWVyIjoiZWZlMDdhOWItNzkxMS00YjMxLTg3MzEtNTliOTU0ZTczNGVkIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvbmFtZSI6Im1hbmhuZ3V5ZW5AZ21haWwuY29tIiwiaHR0cDovL3NjaGVtYXMueG1sc29hcC5vcmcvd3MvMjAwNS8wNS9pZGVudGl0eS9jbGFpbXMvZW1haWxhZGRyZXNzIjoibWFuaG5ndXllbkBnbWFpbC5jb20iLCJodHRwOi8vc2NoZW1hcy5taWNyb3NvZnQuY29tL3dzLzIwMDgvMDYvaWRlbnRpdHkvY2xhaW1zL3JvbGUiOiJoaXJlciIsImV4cCI6MTY0NjI5MDYzOX0.O63bqw6RzBygAsYwgX1EFKpb7uXZS2JHP1ofM3CoZss");
    futureCases.then((_testList) {
      if (this.mounted) {
        setState(() {
          this.testList = _testList;
          // print(userList.length);
        });
      }
    });
    return futureCases;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // Header app
        appBar: AppBar(
          title: Text("Danh sách người dùng"),
        ),
        // Body app
        body: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Column(
            children: [
              FutureBuilder(
                future: loadList(),
                builder: (context, snapshot) {
                  return ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: testList == null ? 0 : testList!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        elevation: 5,
                        margin: EdgeInsets.all(20),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              children: [
                                CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(
                                        "https://media.publit.io/file/BikeForRent/test_avatar.jpg")),
                                SizedBox(width: 20),
                                Expanded(
                                  child: Text(
                                    testList![index].firstname,
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                },
              ),
              ElevatedButton(
                onPressed: () {},
                child: Text("Test CRUD"),
              )
            ],
          ),
        ),
        // Bottom bar app
        // bottomNavigationBar: BottomBar(
        //   bottomBarIndex: 3,
        // ),
      ),
    );
  }
}
