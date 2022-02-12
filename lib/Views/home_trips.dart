import 'package:flutter/material.dart';
import '../Home/review_list.dart';

import '/Home/description_place.dart';
import '/Home/header_appbar.dart';

class HomeTrips extends StatelessWidget {
  const HomeTrips({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        ListView(
          children: [
            DescriptionPlace("Bahamas", 4,
                "Amet non laboris pariatur irure exercitation veniam sint anim ad cupidatat consectetur cupidatat id. Sunt incididunt nostrud velit reprehenderit cupidatat adipisicing exercitation cupidatat ut aliqua commodo nostrud. Elit ullamco occaecat reprehenderit excepteur aliqua cillum elit irure aliqua ea eu duis aute. Aliquip exercitation laborum consectetur minim anim non amet elit non dolor sit ipsum proident pariatur. Sit magna consequat est enim consectetur nisi exercitation aliquip."),
            ReviewList()
          ],
        ),
        HeaderAppBar()
      ],
    )

        //ReviewList()
        );
  }
}
