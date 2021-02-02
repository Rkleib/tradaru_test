import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tradaru_test/components/dashboardBody.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const PrimaryColor = const Color(0xFFE8E8E8);
    return Scaffold(
      backgroundColor: PrimaryColor, // status bar color
      appBar: AppBar(
        backgroundColor: PrimaryColor,
        elevation: 0.0,
        brightness: Brightness.light, // status bar brightness
        actions: <Widget>[
          Container(
            width: size.width,
            height: size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.list),
                    onPressed: () {}),
                IconButton(
                    color: Colors.greenAccent,
                    icon: Icon(Icons.android),
                    onPressed: () {}),
                IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.search),
                    onPressed: () {})
              ],
            ),
          )
        ],
      ),
      body: DashboardBody(),
    );
  }
}
