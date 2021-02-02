import 'package:flutter/material.dart';
import 'package:tradaru_test/models/product.dart';

class DetailScreen extends StatelessWidget {
  final Product product;

  const DetailScreen({Key key, this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    const PrimaryColor = const Color(0xFFE8E8E8);
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0.0,
        brightness: Brightness.light,
        actions: <Widget>[
          Container(
            width: size.width,
            height: size.height,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.arrow_back),
                    onPressed: () => Navigator.pop(context)),
                IconButton(
                    color: Colors.greenAccent,
                    icon: Icon(Icons.android),
                    onPressed: () {}),
                IconButton(
                    color: Colors.grey,
                    icon: Icon(Icons.favorite),
                    onPressed: () {})
              ],
            ),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 50),
            child: Center(child: Image.asset(product.image)),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 90),
            child: Container(
              width: size.width,
              height: 300,
              decoration: BoxDecoration(
                  color: PrimaryColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Text(
                            product.title,
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.indigo,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          flex: 1,
                          child: Row(
                            children: [
                              Icon(Icons.star, color: Colors.yellow),
                              Text("(" + product.rating.toString() + ")")
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Text(product.description, style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 16
                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10),
                      child: Row(
                        children: <Widget>[
                          Text("Size : ", style: TextStyle(
                            color: Colors.grey
                          ),),
                          Container(
                            width: 50,
                            height: 30,
                            decoration: BoxDecoration(
                              color: Colors.lightBlueAccent,
                              borderRadius: BorderRadius.all(Radius.circular(5))
                            ),
                            child: Center(child: Text("US 6")),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

