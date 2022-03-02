import 'package:flutter/material.dart';
import 'package:playtogether_hirer/models/player_model.dart';
import 'package:playtogether_hirer/constants/my_color.dart' as my_colors;

class PlayerCard extends StatefulWidget {
  final double width, aspectRetio;
  final PlayerModel playerModel;
  PlayerCard({
    Key? key,
    this.width = 140,
    this.aspectRetio = 1.02,
    required this.playerModel,
  }) : super(key: key);

  @override
  _PlayerCardState createState() => _PlayerCardState();
}

class _PlayerCardState extends State<PlayerCard> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
        padding: EdgeInsets.only(left: 20 / 375 * size.width),
        child: SizedBox(
            width: widget.width / 375 * size.width,
            child: GestureDetector(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AspectRatio(
                    aspectRatio: 1.02,
                    child: Container(
                      padding: EdgeInsets.all(1 / 1000 * size.width),
                      decoration: BoxDecoration(
                        color: my_colors.secondary.withOpacity(0.1),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: ClipRRect(
                        child: Image.asset("assets/images/HangDam.png",
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        widget.playerModel.firstname,
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Text(
                        widget.playerModel.lastname,
                        style: TextStyle(fontSize: 12, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            )));
  }
}
