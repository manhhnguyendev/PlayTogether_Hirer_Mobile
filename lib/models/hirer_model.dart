class HirerModel {
  String email;
  String password;
  String confirmPassword;
  String firstname;
  String lastname;
  String city;
  String dateOfBirth;
  bool gender;
  bool confirmEmail;
  String avatar;
  double balance;
  String id;

  HirerModel({
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.firstname,
    required this.lastname,
    required this.city,
    required this.dateOfBirth,
    required this.gender,
    required this.confirmEmail,
    required this.avatar,
    required this.balance,
    required this.id,
  });

  factory HirerModel.fromJson(Map<String, dynamic> json) => HirerModel(
        email: json['email'] as String,
        password: json['password'] as String,
        confirmPassword: json['confirmPassword'] as String,
        firstname: json['firstname'] as String,
        lastname: json['lastname'] as String,
        city: json['city'] as String,
        dateOfBirth: json['dateOfBirth'] as String,
        gender: json['gender'] as bool,
        confirmEmail: json['confirmEmail'] as bool,
        avatar: json['avatar'] as String,
        balance: json['balance'] as double,
        id: json['id'] as String,
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "password": password,
        "confirmPassword": confirmPassword,
        "firstname": firstname,
        "lastname": lastname,
        "city": city,
        "dateOfBirth": dateOfBirth,
        "gender": gender,
        "confirmEmail": confirmEmail,
        "avatar": avatar,
        "balance": balance,
        "id": id,
      };
}
