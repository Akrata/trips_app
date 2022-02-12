import 'package:flutter/material.dart';
import 'package:trips_app/Profile/profile_header.dart';

import '../Components/gradient_back.dart';

class ProfileTrips extends StatelessWidget {
  const ProfileTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      GradientBack("Profile", 400),
      ProfileHeader(
          "assets/img/people.jpg", "Pathum Tzoo", "pathumzoo@gmail.com"),
    ]);
  }
}
