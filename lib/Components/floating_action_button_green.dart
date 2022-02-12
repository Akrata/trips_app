import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget {
  const FloatingActionButtonGreen({Key? key}) : super(key: key);

  @override
  _FloatingActionButtonGreenState createState() =>
      _FloatingActionButtonGreenState();
}

class _FloatingActionButtonGreenState extends State<FloatingActionButtonGreen> {
  bool isFav = false;
  void onPressedFav() {
    setState(() {
      isFav = !isFav;
      if (isFav) {
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text("Agregaste a Favoritos")));
      } else {
        Scaffold.of(context)
            .showSnackBar(SnackBar(content: Text("Quitaste de Favoritos")));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      child: Icon(isFav ? Icons.favorite : Icons.favorite_border),
      onPressed: onPressedFav,
    );
  }
}
