import 'package:flutter/material.dart';

import '../helpers/style.dart';
import 'custom_text.dart';
import 'package:my_food_ordering_app/scr/models/category.dart';

List<CategoryModel> categoriesList = [];

class CategoryWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoriesList.length,
        itemBuilder: (_, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(2, 1),
                        blurRadius: 5,
                      )
                    ],
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(4),
                    child: Image.asset(
                      'images/${categoriesList[index].image}',
                      width: 150,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                CustomText(
                  text: categoriesList[index].name,
                  size: 14,
                  color: black,
                  weight: FontWeight.normal,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
