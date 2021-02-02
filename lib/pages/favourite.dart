import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFFE8E8E8);
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        title: Text('Favourite'),
      ),
    );
  }
}
