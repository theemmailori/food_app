import 'package:flutter/material.dart';
import 'package:my_food_ordering_app/scr/helpers/screen_navigation.dart';
import 'package:my_food_ordering_app/scr/providers/category.dart';
import 'package:my_food_ordering_app/scr/screens/bag.dart';
import 'package:my_food_ordering_app/scr/widgets/categories.dart';
import 'package:my_food_ordering_app/scr/widgets/custom_text.dart';
import 'package:my_food_ordering_app/scr/widgets/featured_products.dart';
import 'package:provider/provider.dart';
import '../helpers/style.dart';
import '../providers/user.dart';
import '../widgets/bottom_navigation_icons.dart';
import '../widgets/small_floating_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final user = Provider.of<UserProvider>(context);
    final categoryProvider = Provider.of<CategoryProvider>(context);
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: black),
        elevation: 0.5,
        backgroundColor: white,
        title: CustomText(
            text: 'Food App',
            size: 26,
            color: Colors.black,
            weight: FontWeight.w400),
        actions: [
          Stack(
            children: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  changeScreen(context, ShoppingBag());
                },
              ),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: red, borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
          Stack(
            children: [
              IconButton(
                  onPressed: () {}, icon: Icon(Icons.notifications_none)),
              Positioned(
                top: 12,
                right: 12,
                child: Container(
                  height: 10,
                  width: 10,
                  decoration: BoxDecoration(
                      color: red, borderRadius: BorderRadius.circular(20)),
                ),
              ),
            ],
          ),
        ],
      ),
      drawer: Drawer(
        backgroundColor: white,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.red.shade200,
              ),
              accountName: CustomText(
                  text: user.userModel.name,
                  size: 18,
                  color: black,
                  weight: FontWeight.bold),
              accountEmail: CustomText(
                  text: user.userModel.email,
                  size: 18,
                  color: Colors.black54,
                  weight: FontWeight.normal),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.home),
              title: CustomText(
                text: 'Home',
                size: 18,
                color: black,
                weight: FontWeight.normal,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.person),
              title: CustomText(
                text: 'Account',
                size: 18,
                color: black,
                weight: FontWeight.normal,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.bookmark),
              title: CustomText(
                text: 'My orders',
                size: 18,
                color: black,
                weight: FontWeight.normal,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.shopping_cart),
              title: CustomText(
                text: 'Cart',
                size: 18,
                color: black,
                weight: FontWeight.normal,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.fastfood_rounded),
              title: CustomText(
                text: 'Food I like',
                size: 18,
                color: black,
                weight: FontWeight.normal,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.flatware),
              title: CustomText(
                text: 'Liked restaurants',
                size: 18,
                color: black,
                weight: FontWeight.normal,
              ),
            ),
            ListTile(
              onTap: () {},
              leading: Icon(Icons.settings),
              title: CustomText(
                text: 'Settings',
                size: 18,
                color: black,
                weight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
      backgroundColor: white,
      body: SafeArea(
        child: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: white,
                    borderRadius: BorderRadius.circular(15),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        offset: Offset(1, 1),
                        blurRadius: 4,
                      )
                    ]),
                child: ListTile(
                  leading: Icon(
                    Icons.search,
                    color: red,
                  ),
                  trailing: Icon(
                    Icons.filter_list,
                    color: red,
                  ),
                  title: TextField(
                    decoration: InputDecoration(
                      hintText: 'Find food and restaurants',
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            CategoryWidget(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Featured',
                size: 20,
                color: Colors.grey,
                weight: FontWeight.normal,
              ),
            ),
            Featured(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomText(
                text: 'Popular',
                size: 20,
                color: Colors.grey,
                weight: FontWeight.normal,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('images/food.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmallButton(icon: Icons.favorite),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade900,
                                      size: 20,
                                    ),
                                  ),
                                  Text('4.5')
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.1),
                                  Colors.black.withOpacity(0.05),
                                  Colors.black.withOpacity(0.025),
                                ])),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                            child: RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Spaghetti \n',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text: 'by: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                TextSpan(
                                  text: 'Bukka Hut',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 18, 8, 0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '\$14.99 \n',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('images/food.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmallButton(icon: Icons.favorite),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade900,
                                      size: 20,
                                    ),
                                  ),
                                  Text('4.5')
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.1),
                                  Colors.black.withOpacity(0.05),
                                  Colors.black.withOpacity(0.025),
                                ])),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                            child: RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Spaghetti \n',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text: 'by: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                TextSpan(
                                  text: 'Bukka Hut',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 18, 8, 0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '\$14.99 \n',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Stack(
                children: <Widget>[
                  Container(
                    child: Padding(
                      padding: const EdgeInsets.all(0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Image.asset('images/food.jpg'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        SmallButton(icon: Icons.favorite),
                        Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              width: 50,
                              decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(2),
                                    child: Icon(
                                      Icons.star,
                                      color: Colors.yellow.shade900,
                                      size: 20,
                                    ),
                                  ),
                                  Text('4.5')
                                ],
                              ),
                            )),
                      ],
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20)),
                            gradient: LinearGradient(
                                begin: Alignment.bottomCenter,
                                end: Alignment.topCenter,
                                colors: [
                                  Colors.black.withOpacity(0.8),
                                  Colors.black.withOpacity(0.7),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.6),
                                  Colors.black.withOpacity(0.4),
                                  Colors.black.withOpacity(0.1),
                                  Colors.black.withOpacity(0.05),
                                  Colors.black.withOpacity(0.025),
                                ])),
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 8, 8, 8),
                            child: RichText(
                                text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Spaghetti \n',
                                  style: TextStyle(
                                      fontSize: 22,
                                      fontWeight: FontWeight.w700),
                                ),
                                TextSpan(
                                  text: 'by: ',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w300),
                                ),
                                TextSpan(
                                  text: 'Bukka Hut',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            )),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(12, 18, 8, 0),
                            child: RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                      text: '\$14.99 \n',
                                      style: TextStyle(
                                          fontSize: 22,
                                          fontWeight: FontWeight.w300))
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 100,
        color: white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(30, 0, 30, 26),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              BottomNavIcon(
                onTap: () {},
                icon: Icons.home,
                name: 'Home',
              ),
              BottomNavIcon(
                onTap: () {},
                icon: Icons.location_history,
                name: 'Near me',
              ),
              BottomNavIcon(
                onTap: () {
                  changeScreen(context, ShoppingBag());
                },
                icon: Icons.shopping_bag_rounded,
                name: 'Cart',
              ),
              BottomNavIcon(
                onTap: () {},
                icon: Icons.person,
                name: 'Account',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
