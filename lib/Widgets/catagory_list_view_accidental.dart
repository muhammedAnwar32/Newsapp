import 'package:flutter/material.dart';
import 'package:newsapp/Widgets/card_catagory.dart';
import 'package:newsapp/models/Category_model.dart';

class Catagorieslistview extends StatelessWidget {
  const Catagorieslistview({super.key});
  final List<Categorymodel> categories = const [
    Categorymodel(image: 'assets/images/bussines.jpg', itemname: 'business'),
    Categorymodel(
        image: 'assets/images/entertaiment.jpg', itemname: 'entertainment'),
    Categorymodel(image: 'assets/images/health.jpeg', itemname: 'health'),
    Categorymodel(image: 'assets/images/science.jpg', itemname: 'science'),
    Categorymodel(image: 'assets/images/sports.jpg', itemname: 'sports'),
    Categorymodel(
        image: 'assets/images/technology.jpg', itemname: 'technology'),
    Categorymodel(image: 'assets/images/news.jpg', itemname: 'general'),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.builder(
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Cardcatagory(
              category: categories[index],
            );
          }),
    );
  }
}
