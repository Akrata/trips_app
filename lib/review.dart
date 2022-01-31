import 'package:flutter/material.dart';

class Review extends StatelessWidget {
  String pathImage = "assets/img/people.jpg";
  String name = "Roberto Rodriguez";
  String details = "1 review, 5 photos";
  String comment =
      "Deserunt nulla nostrud sint non laborum est laborum id laboris enim qui irure.";

  int stars = 3;

  Review(this.pathImage, this.name, this.details, this.comment);

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

    final userInfo = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        details,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 13,
        ),
      ),
    );

    final userName = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        name,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17,
        ),
      ),
    );

    final userComment = Container(
      margin: EdgeInsets.only(
        left: 20,
      ),
      child: Text(
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
          fontFamily: "Lato",
          fontSize: 17,
        ),
      ),
    );

    final userDetails = Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [userName, userInfo, userComment],
    );

    final photo = Container(
      margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    return Row(
      children: [photo, userDetails],
    );
  }
}
