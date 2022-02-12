import 'package:flutter/material.dart';
import 'package:trips_app/Profile/profile_buttons.dart';

class ProfileHeader extends StatelessWidget {
  String pathImage = "assets/img/people.jpg";
  String userName = "";
  String userEmail = "";

  ProfileHeader(this.pathImage, this.userName, this.userEmail);

  @override
  Widget build(BuildContext context) {
    final photo = Container(
      // margin: EdgeInsets.only(top: 20.0, left: 20.0),
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
          border: Border.all(
              color: Colors.white, width: 2, style: BorderStyle.solid),
          shape: BoxShape.circle,
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(pathImage))),
    );

    final userInfo = Container(
        margin: EdgeInsets.only(left: 20),
        child: Column(
          children: [
            Text(
              userName,
              style: TextStyle(
                  color: Colors.white, fontSize: 20, letterSpacing: 1.5),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              userEmail,
              style:
                  TextStyle(color: Colors.grey, fontSize: 15, letterSpacing: 2),
            )
          ],
          crossAxisAlignment: CrossAxisAlignment.start,
        ));

    final profileCard = Container(
        margin: EdgeInsets.only(top: 130, left: 20, right: 15),
        child: Row(
          children: [photo, userInfo],
        ));

    final buttonList = Container(
        child: Row(children: [
      ProfileButtons(true, Icons.turned_in_not),
      ProfileButtons(true, Icons.card_travel),
      ProfileButtons(false, Icons.add),
      ProfileButtons(true, Icons.email_outlined),
      ProfileButtons(true, Icons.person)
    ], mainAxisAlignment: MainAxisAlignment.spaceEvenly));

    return Container(
      child: Column(
        children: [
          profileCard,
          SizedBox(
            height: 35,
          ),
          buttonList
        ],
      ),
    );
  }
}
