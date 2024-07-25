import 'package:cloud_firestore/cloud_firestore.dart';

class ProductModel {
  static const ID = "id";
  static const NAME = "name";
  static const RATING = "rating";
  static const IMAGE = "image";
  static const PRICE = "price";
  static const RESTAURANT_ID = "restaurantId";
  static const RESTAURANT = "restaurant";
  static const DESCRIPTION = "description";
  static const CATEGORY = "category";
  static const FEATURED = "featured";
  static const RATES = "rates";
  static const USER_LIKES = "userLikes";

  String _id = '';
  String _name = '';
  int _restaurantId = 0;
  String _restaurant = '';
  String _category = '';
  String _image = '';
  String _description = '';
  double _rating = 0.0;
  int _price = 0;
  int _rates = 0;
  bool _featured = false;

  // Getters
  String get id => _id;
  String get name => _name;
  String get restaurant => _restaurant;
  int get restaurantId => _restaurantId;
  String get category => _category;
  String get description => _description;
  String get image => _image;
  double get rating => _rating;
  int get price => _price;
  bool get featured => _featured;
  int get rates => _rates;

  // public variable
  bool liked = false;

  ProductModel.fromSnapshot(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    _id = data[ID] ?? '';
    _image = data[IMAGE] ?? '';
    _restaurant = data[RESTAURANT] ?? '';
    _restaurantId = data[RESTAURANT_ID] ?? 0;
    _description = data[DESCRIPTION] ?? '';
    _featured = data[FEATURED] ?? false;
    _price = data[PRICE] ?? 0;
    _category = data[CATEGORY] ?? '';
    _rating = data[RATING]?.toDouble() ?? 0.0;
    _rates = data[RATES] ?? 0;
    _name = data[NAME] ?? '';
  }
}
