import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final double price, id, rating;
  final List<String> size;
  final Color color;

  Product(
      {this.id,
      this.image,
      this.title,
      this.price,
      this.description,
      this.size,
      this.color,
      this.rating});
}

List<Product> products = [
  Product(
      id: 1,
      title: "Nike Air Max 20",
      price: 240.00,
      size: ["US 6", "US 7", "US 8", "US 9"],
      description: "Nike Air Max Shoes Built for natural Motion",
      image: "assets/images/nikeAirMax20.jpeg",
      color: Colors.white,
      rating: 4.5),
  Product(
      id: 2,
      title: "Excee Sneakers",
      price: 260.00,
      size: ["US 6", "US 7", "US 8", "US 9"],
      description: "Excee Sneakers Shoes built with Nike Flex Technology",
      image: "assets/images/exceeSneaker.jpeg",
      color: Colors.white,
      rating: 3.5),
  Product(
      id: 3,
      title: "Air Max Motion 2",
      price: 290.00,
      size: ["US 6", "US 7", "US 8", "US 9"],
      description: "Air Max Motion Shoes built with Nike AirMax Technology",
      image: "assets/images/airMaxMotion2.jpeg",
      color: Colors.white,
      rating: 2),
  Product(
      id: 4,
      title: "Leather Sneakers",
      price: 270.00,
      size: ["US 6", "US 7", "US 8", "US 9"],
      description: "Leather Sneaker 2 Shoes built with high quality leather",
      image: "assets/images/leatherSneaker.jpeg",
      color: Colors.white,
      rating: 5),
  Product(
      id: 5,
      title: "Air Jordan Classic",
      price: 300.00,
      size: ["US 6", "US 7", "US 8", "US 9"],
      description: "Air Jordan Classic Shoes for retro lovers",
      image: "assets/images/airJordanClassic.jpeg",
      color: Colors.white,
      rating: 3),
];
