import 'package:flutter/material.dart';

class ProfileButtons extends StatelessWidget {
  bool isMini = true;
  IconData imageIcon = Icons.email;

  ProfileButtons(this.isMini, this.imageIcon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      child: Icon(imageIcon),
      mini: isMini,
      backgroundColor: Colors.white,
      foregroundColor: Color(0xFF584CD1),
    );
  }
}
