import 'package:flutter/material.dart';
import 'package:my_food_ordering_app/scr/models/products.dart';
import 'package:my_food_ordering_app/scr/screens/details.dart';
import 'package:my_food_ordering_app/scr/widgets/loading.dart';

import '../helpers/screen_navigation.dart';
import '../helpers/style.dart';
import 'custom_text.dart';

List<ProductModel> productsList = [
  // Product(
  //     name: 'Pasta',
  //     image: 'er.jpg',
  //     rating: 4.2,
  //     price: 5.99,
  //     vendor: 'Tantalizers',
  //     wishList: true),
  // Product(
  //     name: 'Taccos',
  //     image: '11.jpg',
  //     rating: 4.6,
  //     price: 8.99,
  //     vendor: 'Mr Biggs',
  //     wishList: false),
  // Product(
  //     name: 'Meatball',
  //     image: 'er.jpg',
  //     rating: 4.8,
  //     price: 11.99,
  //     vendor: 'Tantalizers',
  //     wishList: true),
  // Product(
  //     name: 'Steak',
  //     image: '16.jpg',
  //     rating: 4.9,
  //     price: 11.99,
  //     vendor: 'Tantalizers',
  //     wishList: true)
];

class Featured extends StatelessWidget {
  const Featured({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 260,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: productsList.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: GestureDetector(
                onTap: () {
                  changeScreen(
                      context,
                      Details(
                        product: productsList[index],
                      ));
                },
                child: Container(
                  height: 260,
                  width: 220,
                  decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade300,
                        offset: Offset(-2, -1),
                        blurRadius: 10,
                      ),
                    ],
                  ),
                  child: Column(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10),
                            topRight: Radius.circular(10)),
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: Loading(),
                              ),
                            ),
                            Center(
                              child: Image.asset(
                                'images/${productsList[index].image}',
                                alignment: Alignment.center,
                                //height: 160,
                                //width: 120,
                              ),
                            )
                          ],
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: CustomText(
                              text: productsList[index].name,
                              size: 16,
                              color: black,
                              weight: FontWeight.normal,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(7),
                            child: Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.shade300,
                                    offset: Offset(1, 1),
                                    blurRadius: 4,
                                  ),
                                ],
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Icon(
                                  Icons.favorite,
                                  color: red,
                                  size: 19,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: CustomText(
                                    text: productsList[index].rating.toString(),
                                    size: 14,
                                    color: Colors.grey,
                                    weight: FontWeight.normal),
                              ),
                              SizedBox(
                                height: 2,
                                width: 3,
                              ),
                              Icon(Icons.star, color: red, size: 16),
                              Icon(Icons.star, color: red, size: 16),
                              Icon(Icons.star, color: red, size: 16),
                              Icon(Icons.star, color: red, size: 16),
                              Icon(Icons.star, color: Colors.grey, size: 16),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 7.0),
                            child: CustomText(
                                text: '\$${productsList[index].amount}',
                                size: 14,
                                color: black,
                                weight: FontWeight.bold),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}
