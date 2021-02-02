import 'package:flutter/material.dart';
import 'package:tradaru_test/pages/account.dart';
import 'package:tradaru_test/pages/article.dart';
import 'package:tradaru_test/pages/dashboard.dart';
import 'package:tradaru_test/pages/favourite.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0;
  Widget currentScreen = Dashboard();

  final PageStorageBucket bucket = PageStorageBucket();

  @override
  Widget build(BuildContext context) {
    const PrimaryColor = const Color(0xFFE8E8E8);
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: PrimaryColor,
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: Container(
        height: 70,
        width: 70,
        child: FittedBox(
          child: FloatingActionButton(
              onPressed: () {},
              backgroundColor: Colors.deepPurple,
              child: Icon(
                Icons.shopping_cart,
                size: 20,
              )),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          width: size.width,
          height: 80,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.work_rounded),
                  onPressed: () {
                    setState(() {
                      currentScreen = Dashboard();
                      currentTab = 0;
                    });
                  },
                  color: currentTab == 0 ? Colors.deepPurple : Colors.grey,
                  iconSize: 30.0,
                ),
                IconButton(
                  icon: Icon(Icons.favorite),
                  onPressed: () {
                    setState(() {
                      currentScreen = Favourite();
                      currentTab = 1;
                    });
                  },
                  color: currentTab == 1 ? Colors.deepPurple : Colors.grey,
                  iconSize: 30.0,
                ),
                SizedBox.shrink(),
                SizedBox.shrink(),
                IconButton(
                  icon: Icon(Icons.article),
                  onPressed: () {
                    setState(() {
                      currentScreen = Article();
                      currentTab = 2;
                    });
                  },
                  color: currentTab == 2 ? Colors.deepPurple : Colors.grey,
                  iconSize: 30.0,
                ),
                IconButton(
                  icon: Icon(Icons.account_box),
                  onPressed: () {
                    setState(() {
                      currentScreen = Account();
                      currentTab = 3;
                    });
                  },
                  color: currentTab == 3 ? Colors.deepPurple : Colors.grey,
                  iconSize: 30.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
