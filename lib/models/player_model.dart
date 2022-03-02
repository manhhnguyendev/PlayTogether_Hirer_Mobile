class PlayerModel {
  String id;
  // final String name;
  // final List<String> abilities;
  // final List<String> images;
  // final bool isHired;
  String avatar;
  String firstname;
  String lastname;
  double pricePerHour;
  double rating;
  String status;

  PlayerModel({
    required this.id,
    // required this.name,
    // required this.abilities,
    // required this.images,
    // this.isHired = false,
    required this.avatar,
    required this.firstname,
    required this.lastname,
    required this.pricePerHour,
    required this.rating,
    required this.status,
  });

  factory PlayerModel.fromJson(Map<String, dynamic> json) => PlayerModel(
        id: json['id'] as String,
        avatar: json['avatar'] as String,
        firstname: json['firstname'] as String,
        lastname: json['lastname'] as String,
        pricePerHour: json['pricePerHour'] as double,
        rating: json['rating'] as double,
        status: json['status'] as String,
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "avatar": avatar,
        "firstname": firstname,
        "lastname": lastname,
        "pricePerHour": pricePerHour,
        "rating": rating,
        "status": status,
      };
}

// List<PlayerModel> demoPlayer = [
//   PlayerModel(
//       id: 1,
//       name: "Hằng Đàm",
//       images: [
//         "assets/images/HangDam.png",
//         "assets/images/HangDam.png",
//       ],
//       abilities: [
//         "Games",
//         "Ca hát",
//       ],
//       isHired: true),
//   PlayerModel(
//       id: 2,
//       name: "Jennie",
//       images: [
//         "assets/images/Jennie.png",
//         "assets/images/Jennie.png",
//       ],
//       abilities: [
//         "Games",
//         "Ca hát",
//       ],
//       isHired: true),
//   PlayerModel(
//       id: 3,
//       name: "Zuto",
//       images: [
//         "assets/images/Zuto.png",
//         "assets/images/Zuto.png",
//       ],
//       abilities: [
//         "Games",
//         "Ca hát",
//       ],
//       isHired: true),
// ];
