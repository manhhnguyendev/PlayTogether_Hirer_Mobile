import 'package:flutter/material.dart';
import 'package:playtogether_hirer/shared_component/checkbox_state.dart';
import 'package:playtogether_hirer/shared_component/main_button.dart';
import 'package:playtogether_hirer/shared_component/main_goback_button.dart';

class UserCategoriesForm extends StatefulWidget {
  const UserCategoriesForm({Key? key}) : super(key: key);

  @override
  _UserCategoriesFormState createState() => _UserCategoriesFormState();
}

class _UserCategoriesFormState extends State<UserCategoriesForm> {
  final _formKey = GlobalKey<FormState>();
  List listCategories = ['Ca hát', 'Chơi game', 'Trò chuyện'];
  List listCategoriesCheckBox = [];
  List listCategoriesChoosen = [];
  bool firstTimeInit = false;
  void createAListCheckBox() {
    if (!firstTimeInit) {
      for (var i = 0; i < listCategories.length; i++) {
        listCategoriesCheckBox.add(CheckBoxState(title: listCategories[i]));
      }
      firstTimeInit = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    createAListCheckBox();
    return Form(
        key: _formKey,
        child: Column(
          children: [
            Text(
              'Bạn thích hoạt động nào (Chọn 2 trên 3):',
              style: TextStyle(fontSize: 17),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(0.0),
              child: Column(
                children: List.generate(
                    listCategoriesCheckBox.length,
                    (index) =>
                        buildSingleCheckBox(listCategoriesCheckBox[index])),
              ),
            ),
            MainButton(
              text: "TIẾP TỤC",
              onpress: () {
                if (_formKey.currentState == null) {
                  print("_formKey.currentState is null!");
                } else if (_formKey.currentState!.validate()) {
                  _formKey.currentState!.save();
                }
              },
            ),
            GoBackButton(text: "QUAY LẠI", onpress: () {})
          ],
        ));
  }

  Widget buildSingleCheckBox(CheckBoxState cbState) => CheckboxListTile(
        controlAffinity: ListTileControlAffinity.leading,
        activeColor: Colors.black,
        value: cbState.value,
        onChanged: (value) => setState(
          () => cbState.value = value!,
        ),
        title: Text(
          cbState.title,
          style: TextStyle(fontSize: 18),
        ),
      );
}
