class Player {
  final int id;
  final String name;
  final List<String> abilities;
  final List<String> images;
  final bool isHired;

  Player({
    required this.id,
    required this.name,
    required this.abilities,
    required this.images,
    this.isHired = false,
  });
}

List<Player> demoPlayer = [
  Player(
      id: 1,
      name: "Hằng Đàm",
      images: [
        "assets/images/HangDam.png",
        "assets/images/HangDam.png",
      ],
      abilities: [
        "Games",
        "Ca hát",
      ],
      isHired: true),
  Player(
      id: 2,
      name: "Jennie",
      images: [
        "assets/images/Jennie.png",
        "assets/images/Jennie.png",
      ],
      abilities: [
        "Games",
        "Ca hát",
      ],
      isHired: true),
  Player(
      id: 3,
      name: "Zuto",
      images: [
        "assets/images/Zuto.png",
        "assets/images/Zuto.png",
      ],
      abilities: [
        "Games",
        "Ca hát",
      ],
      isHired: true),
];
