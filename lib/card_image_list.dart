import 'package:flutter/material.dart';
import 'card_image.dart';

class CardImageList extends StatelessWidget {
  const CardImageList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        padding: const EdgeInsets.all(25),
        scrollDirection: Axis.horizontal,
        children: [
          CardImage("assets/img/beach.jpeg"),
          CardImage("assets/img/river.jpeg"),
          CardImage("assets/img/sunset.jpeg"),
          CardImage("assets/img/beach.jpeg"),
          CardImage("assets/img/river.jpeg"),
          CardImage("assets/img/sunset.jpeg"),
        ],
      ),
    );
  }
}
