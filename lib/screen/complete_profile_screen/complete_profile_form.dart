import 'package:flutter/material.dart';
import 'package:playtogether_hirer/const.dart';
import 'package:playtogether_hirer/shared_component/login_error_form.dart';
import 'package:playtogether_hirer/shared_component/main_button.dart';
import 'package:playtogether_hirer/shared_component/main_goback_button.dart';

class CompleteProfileForm extends StatefulWidget {
  const CompleteProfileForm({Key? key}) : super(key: key);

  @override
  _CompleteProfileFormState createState() => _CompleteProfileFormState();
}

class _CompleteProfileFormState extends State<CompleteProfileForm> {
  final _formKey = GlobalKey<FormState>();
  final initialDate = DateTime.now();
  String firstName = "";
  String lastName = "";
  late DateTime rawBirthday;
  ValueNotifier<String> notiBirth = ValueNotifier<String>("Ngày sinh của bạn");
  //String birthday = "";
  final tec = TextEditingController();
  String province = "";
  final List listErrorFirstName = [''];
  final List listErrorLastName = [''];
  final List listErrorBirthday = ['', birthdayNullError];
  final List listErrorProvince = [''];

  void addError(List inputListError, {String? error}) {
    if (!inputListError.contains(error)) {
      setState(() {
        inputListError.add(error);
      });
    }
  }

  void removeError(List inputListError, {String? error}) {
    if (inputListError.contains(error)) {
      setState(() {
        inputListError.remove(error);
      });
    }
  }

  void convertBirthday() {
    if (rawBirthday == null) {
      notiBirth.value = "Ngày sinh của bạn";
    } else {
      notiBirth.value =
          '${rawBirthday.day}/${rawBirthday.month}/${rawBirthday.year}';
    }
  }

  @override
  void initState() {
    notiBirth = ValueNotifier<String>("Ngày sinh của bạn");
    notiBirth.addListener(() {
      tec.text = notiBirth.value;
      print(tec.text + "...initState()");
      if (tec.text != "Ngày sinh của bạn" &&
          tec.text.isNotEmpty &&
          listErrorBirthday.contains(birthdayNullError)) {
        //removeError(listErrorLastName, error: birthdayNullError);
        listErrorBirthday.remove(birthdayNullError);
      } else if ((tec.text == "Ngày sinh của bạn" || tec.text.isEmpty) &&
          !listErrorBirthday.contains(birthdayNullError)) {
        listErrorBirthday.add(birthdayNullError);
      }
      print(listErrorBirthday.toString() + "..initState()");
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Column(
              children: <Widget>[
                Row(
                  children: [
                    Expanded(flex: 1, child: buildFirstNameField()),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(flex: 1, child: buildLastNameField()),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                        flex: 1,
                        child: FormError(listError: listErrorFirstName)),
                    const SizedBox(
                      width: 5,
                    ),
                    Expanded(
                        flex: 1,
                        child: FormError(listError: listErrorFirstName)),
                  ],
                ),
                buildBirthdayArea(),
                //FormError(listError: listErrorBirthday),
                MainButton(
                    text: "HOÀN TẤT",
                    onpress: () {
                      if (_formKey.currentState == null) {
                        print("_formKey.currentState is null!");
                      } else if (_formKey.currentState!.validate()) {
                        _formKey.currentState!.save();
                        if (listErrorFirstName.length ==
                                1 && //vi` luc khai bao 4 cai list , co 1 phan tu "" san trong list nen length = 1;
                            listErrorLastName.length == 1 &&
                            listErrorProvince.length == 1 &&
                            listErrorBirthday.length == 1) {
                          print("ALL VALID");
                        }
                      }
                    }),
                GoBackButton(text: "QUAY LẠI ", onpress: () {}),
              ],
            ),
          )
        ],
      ),
    );
  }

  TextFormField buildFirstNameField() {
    return TextFormField(
      maxLength: 30,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => firstName = newValue!,
      onChanged: (value) {
        firstName = value;
        if (value.isNotEmpty &&
            listErrorFirstName.contains(firstNameNullError)) {
          removeError(listErrorFirstName, error: firstNameNullError);
        }
        return null;
      },
      validator: (value) {
        if ((value!.isEmpty) &&
            !listErrorFirstName.contains(firstNameNullError)) {
          addError(listErrorFirstName, error: firstNameNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        counterText: "",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        labelText: "Họ",
        hintText: "Nhập vào họ",
        enabledBorder: OutlineInputBorder(
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 10,
        ),
        focusedErrorBorder: OutlineInputBorder(
            gapPadding: 10, borderSide: BorderSide(color: Colors.red)),
        errorBorder: (OutlineInputBorder(
            gapPadding: 10, borderSide: BorderSide(color: Colors.red))),
        errorStyle: TextStyle(height: 0, color: Colors.red),
      ),
    );
  }

  TextFormField buildLastNameField() {
    return TextFormField(
      maxLength: 30,
      keyboardType: TextInputType.name,
      onSaved: (newValue) => lastName = newValue!,
      onChanged: (value) {
        lastName = value;
        if (value.isNotEmpty && listErrorLastName.contains(lastNameNullError)) {
          removeError(listErrorLastName, error: lastNameNullError);
        }
        return null;
      },
      validator: (value) {
        if ((value!.isEmpty) &&
            !listErrorLastName.contains(lastNameNullError)) {
          addError(listErrorLastName, error: lastNameNullError);
          return "";
        }
        return null;
      },
      decoration: const InputDecoration(
        counterText: "",
        floatingLabelBehavior: FloatingLabelBehavior.never,
        contentPadding: EdgeInsets.symmetric(horizontal: 20),
        labelText: "Tên",
        hintText: "Nhập vào tên",
        enabledBorder: OutlineInputBorder(
          gapPadding: 10,
        ),
        focusedBorder: OutlineInputBorder(
          gapPadding: 10,
        ),
        focusedErrorBorder: OutlineInputBorder(
            gapPadding: 10, borderSide: BorderSide(color: Colors.red)),
        errorBorder: (OutlineInputBorder(
            gapPadding: 10, borderSide: BorderSide(color: Colors.red))),
        errorStyle: TextStyle(height: 0, color: Colors.red),
      ),
    );
  }

  Container buildBirthdayArea() {
    return Container(
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: TextFormField(
              controller: tec,
              readOnly: true,
              onSaved: (newValue) {
                notiBirth.value = newValue!;
              },
              decoration: const InputDecoration(
                counterText: "",
                floatingLabelBehavior: FloatingLabelBehavior.never,
                contentPadding: EdgeInsets.symmetric(horizontal: 20),
                labelText: "Sinh nhật của bạn",
                //hintText: "Chọn ngày sinh nhật",
                enabledBorder: OutlineInputBorder(
                  gapPadding: 10,
                ),
                focusedBorder: OutlineInputBorder(
                  gapPadding: 10,
                ),
                focusedErrorBorder: OutlineInputBorder(
                    gapPadding: 10, borderSide: BorderSide(color: Colors.red)),
                errorBorder: (OutlineInputBorder(
                    gapPadding: 10, borderSide: BorderSide(color: Colors.red))),
                errorStyle: TextStyle(height: 0, color: Colors.red),
              ),
            ),
          ),
          Expanded(
              flex: 1,
              child: SizedBox(
                height: 55,
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
                    child: FlatButton(
                      color: const Color.fromRGBO(
                        137,
                        128,
                        255,
                        1,
                      ),
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: DateTime.now(),
                          firstDate: DateTime(DateTime.now().year - 100),
                          lastDate: DateTime(DateTime.now().year + 1),
                        ).then((date) {
                          rawBirthday = date!;
                          convertBirthday();
                          print(notiBirth.value + "at button");
                        });
                      },
                      child: const Text("Chọn ngày",
                          style:
                              TextStyle(color: Colors.white, fontSize: 13.5)),
                    ),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
