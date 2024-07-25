import 'package:flutter/material.dart';
import 'package:my_food_ordering_app/scr/models/products.dart';
import 'package:another_carousel_pro/another_carousel_pro.dart';
import 'package:my_food_ordering_app/scr/widgets/custom_text.dart';
import 'package:my_food_ordering_app/scr/widgets/small_floating_button.dart';

import '../helpers/style.dart';

class Details extends StatefulWidget {
  final ProductModel product;
  const Details({super.key, required this.product});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: white,
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 400,
              child: Stack(
                children: [
                  AnotherCarousel(
                    images: [
                      AssetImage('images/${widget.product.image}'),
                      AssetImage('images/${widget.product.image}'),
                      AssetImage('images/${widget.product.image}'),
                    ],
                    dotBgColor: white,
                    dotColor: Colors.grey,
                    dotIncreasedColor: red,
                    dotIncreaseSize: 2,
                    autoplay: false,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: black,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      Stack(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Stack(
                              children: [
                                IconButton(
                                  icon: Icon(
                                    Icons.shopping_bag_outlined,
                                    color: black,
                                    size: 35,
                                  ),
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            right: 17,
                            bottom: 14,
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
                                padding:
                                    const EdgeInsets.only(left: 5, right: 5),
                                child: CustomText(
                                    text: '2',
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
                  Positioned(
                    right: 15,
                    bottom: 70,
                    child: Container(
                      decoration: BoxDecoration(
                          color: white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.shade400,
                                offset: Offset(2, 1),
                                blurRadius: 3),
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Icon(
                          Icons.favorite,
                          size: 22,
                          color: red,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            CustomText(
                text: widget.product.name,
                size: 24,
                color: black,
                weight: FontWeight.bold),
            CustomText(
                text: '\$' + widget.product.amount.toString(),
                size: 18,
                color: red,
                weight: FontWeight.w700),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.remove,
                        size: 35,
                      )),
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      color: red,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(28, 6, 28, 6),
                      child: CustomText(
                          text: 'Add to Bag',
                          size: 24,
                          color: white,
                          weight: FontWeight.w600),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add,
                        color: red,
                        size: 35,
                      )),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
