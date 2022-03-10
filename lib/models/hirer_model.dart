class HirerModel {
  String email;
  String firstname;
  String lastname;
  String city;
  String dateOfBirth;
  bool gender;
  String avatar;
  double balance;
  String id;

  HirerModel({
    required this.email,
    required this.firstname,
    required this.lastname,
    required this.city,
    required this.dateOfBirth,
    required this.gender,
    required this.avatar,
    required this.balance,
    required this.id,
  });

  factory HirerModel.fromJson(Map<String, dynamic> json) => HirerModel(
        email: json['email'] as String,
        firstname: json['firstname'] as String,
        lastname: json['lastname'] as String,
        city: json['city'] as String,
        dateOfBirth: json['dateOfBirth'] as String,
        gender: json['gender'] as bool,
        avatar: json['avatar'] as String,
        balance: json['balance'] as double,
        id: json['id'] as String,
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "firstname": firstname,
        "lastname": lastname,
        "city": city,
        "dateOfBirth": dateOfBirth,
        "gender": gender,
        "avatar": avatar,
        "balance": balance,
        "id": id,
      };
}
