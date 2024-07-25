import 'package:flutter/material.dart';
import 'package:my_food_ordering_app/scr/widgets/custom_text.dart';
import 'package:my_food_ordering_app/scr/widgets/featured_products.dart';

import '../helpers/style.dart';
import '../models/products.dart';

class ShoppingBag extends StatefulWidget {
  // ProductModel product = ProductModel(
  //     name: 'Pasta',
  //     image: '1.jpg',
  //     rating: 4.2,
  //     price: 5.99,
  //     vendor: 'Tantalizers',
  //     wishList: true);

  ShoppingBag({super.key});

  @override
  State<ShoppingBag> createState() => _ShoppingBagState();
}

class _ShoppingBagState extends State<ShoppingBag> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        backgroundColor: white,
        elevation: 0,
        centerTitle: true,
        title: CustomText(
            text: 'Shopping Bag',
            size: 25,
            color: black,
            weight: FontWeight.normal),
        actions: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 12, right: 5),
                child: IconButton(
                  icon: Icon(
                    Icons.shopping_bag_outlined,
                    color: black,
                    size: 35,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              Positioned(
                right: 15,
                bottom: 11,
                child: Container(
                  decoration: BoxDecoration(
                      color: white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(2, 1),
                          blurRadius: 3,
                        ),
                      ]),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 5, right: 5),
                    child: CustomText(
                        text: '3',
                        size: 13,
                        color: red,
                        weight: FontWeight.w700),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      backgroundColor: white,
      body: ListView(
        children: [
          // Padding(
          //   padding: const EdgeInsets.all(10),
          //   child: Container(
          //     height: 170,
          //     decoration: BoxDecoration(
          //       color: white,
          //       boxShadow: [
          //         BoxShadow(
          //           color: Colors.red.shade50,
          //           offset: Offset(5, 10),
          //           blurRadius: 25,
          //         ),
          //       ],
          //     ),
          //     child: Row(
          //       children: <Widget>[
          //         Image.asset(
          //           'images/${widget.product.image}',
          //           height: 150,
          //           width: 150,
          //         ),
          //         Row(
          //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //           children: [
          //             RichText(
          //               text: TextSpan(children: [
          //                 TextSpan(
          //                   text: widget.product.name + '\n',
          //                   style: TextStyle(color: black, fontSize: 22),
          //                 ),
          //                 TextSpan(
          //                   text: '\$' + widget.product.price.toString() + '\n',
          //                   style: TextStyle(
          //                       color: black,
          //                       fontSize: 17,
          //                       fontWeight: FontWeight.w800),
          //                 ),
          //               ]),
          //             ),
          //             SizedBox(
          //               width: 140,
          //             ),
          //             IconButton(
          //                 onPressed: () {},
          //                 icon: Icon(
          //                   Icons.delete,
          //                   color: Colors.grey.shade600,
          //                   size: 30,
          //                 ))
          //           ],
          //         ),
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
