import 'package:flutter/material.dart';

class Account extends StatefulWidget {
  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFFE8E8E8);
    return Scaffold(
      backgroundColor: PrimaryColor,
      appBar: AppBar(
        title: Text('Account'),
      ),
    );
  }
}
