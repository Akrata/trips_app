import 'package:flutter/material.dart';
import '../Components/button_purple.dart';

class DescriptionPlace extends StatelessWidget {
  // String descriptionDummy =
  //     "Culpa fugiat minim sint ut deserunt amet. Excepteur ea fugiat sit nisi irure minim nostrud commodo anim eiusmod Lorem. Incididunt consectetur adipisicing est nostrud ullamco culpa. Tempor exercitation eiusmod qui Lorem ipsum eiusmod consectetur ea. Voluptate voluptate ullamco sit veniam minim ipsum in magna.";

  String namePlace;

  int stars;

  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_border = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_border,
        color: Colors.amber,
      ),
    );

    final star_half = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star_half,
        color: Colors.amber,
      ),
    );

    final star = Container(
      margin: const EdgeInsets.only(top: 323.0, right: 3.0),
      child: const Icon(
        Icons.star,
        color: Colors.amber,
      ),
    );

    final description = Container(
      margin: const EdgeInsets.only(top: 20.0, left: 20.0, right: 20.0),
      child: Text(
        descriptionPlace,
        style: TextStyle(
            fontFamily: "Lato",
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
            color: Colors.blueGrey),
      ),
    );

    final title_stars = Row(
      children: [
        Container(
          margin: const EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(
            namePlace,
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                fontFamily: "Lato"),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: [star, star, star, star_half, star_border],
        ),
      ],
    );
    return Column(
      children: [title_stars, description, ButtonPurple("Navegate")],
      crossAxisAlignment: CrossAxisAlignment.start,
    );
  }
}
