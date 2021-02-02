import 'package:flutter/material.dart';

class Article extends StatefulWidget {
  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFFE8E8E8);
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        title: Text('Article'),
      ),
    );
  }
}
