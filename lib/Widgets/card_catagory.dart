import 'package:flutter/material.dart';
import 'package:newsapp/models/Category_model.dart';
import 'package:newsapp/views/category_view.dart';

class Cardcatagory extends StatelessWidget {
  const Cardcatagory({super.key, required this.category});
  final Categorymodel category;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (context) {
          return Categoryview(
            category: category.itemname,
          );
        }));
      },
      child: Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(14),
            image: DecorationImage(image: AssetImage(category.image))),
        height: 120,
        width: 170,
        child: Center(
          child: Text(
            category.itemname,
            style: const TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold),
          ),
        ),
      ),
    );
  }
}
