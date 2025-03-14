import 'package:cloud_firestore/cloud_firestore.dart';

class CartItemModel {
  static const ID = "id";
  static const NAME = "name";
  static const IMAGE = "image";
  static const PRODUCT_ID = "productId";
  static const QUANTITY = "quantity";
  static const PRICE = "price";
  static const RESTAURANT_ID = "restaurantId";
  static const TOTAL_RESTAURANT_SALES = "totalRestaurantSale";

  String _id = '';
  String _name = '';
  String _image = '';
  String _productId = '';
  String _restaurantId = '';
  int _totalRestaurantSale = 0;
  int _quantity = 0;
  int _price = 0;

  // Getters
  String get id => _id;
  String get name => _name;
  String get image => _image;
  String get productId => _productId;
  String get restaurantId => _restaurantId;
  int get price => _price;
  int get totalRestaurantSale => _totalRestaurantSale;
  int get quantity => _quantity;

  CartItemModel.fromMap(Map<String, dynamic> data) {
    _id = data[ID] ?? '';
    _name = data[NAME] ?? '';
    _image = data[IMAGE] ?? '';
    _productId = data[PRODUCT_ID] ?? '';
    _price = data[PRICE] ?? 0;
    _quantity = data[QUANTITY] ?? 0;
    _totalRestaurantSale = data[TOTAL_RESTAURANT_SALES] ?? 0;
    _restaurantId = data[RESTAURANT_ID] ?? '';
  }

  Map<String, dynamic> toMap() => {
        ID: _id,
        IMAGE: _image,
        NAME: _name,
        PRODUCT_ID: _productId,
        QUANTITY: _quantity,
        PRICE: _price,
        RESTAURANT_ID: _restaurantId,
        TOTAL_RESTAURANT_SALES: _totalRestaurantSale
      };
}
