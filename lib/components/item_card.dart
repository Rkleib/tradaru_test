import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:tradaru_test/models/product.dart';

class ItemCard extends StatelessWidget {
  final Product product;
  final Function press;

  const ItemCard({Key key, this.product, this.press}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
              height: 200,
              decoration: BoxDecoration(
                  color: product.color,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(product.image),
                  ),
                  Text(product.title),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      r"$" + product.price.toString(),
                      style: TextStyle(color: Colors.indigo, fontSize: 20),
                    ),
                  ),
                  RatingBar.builder(
                      itemSize: 15,
                      initialRating: product.rating,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: EdgeInsets.symmetric(horizontal: 4),
                      itemBuilder: (context, _) => Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                      onRatingUpdate: null)
                ],
              )),
        ],
      ),
    );
  }
}
