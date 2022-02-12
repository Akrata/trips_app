import 'package:flutter/material.dart';
import 'card_image_list.dart';
import 'package:trips_app/Components/gradient_back.dart';

class HeaderAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GradientBack("Popular", 250),
        CardImageList(),
      ],
    );
  }
}
