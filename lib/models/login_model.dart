class LoginModel {
  String message;

  String expireDate;

  LoginModel({
    required this.message,
    required this.expireDate,
  });

  factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        message: json['message'] as String,
        expireDate: json['expireDate'] as String,
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "expireDate": expireDate,
      };
}
