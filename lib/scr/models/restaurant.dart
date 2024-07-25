import 'package:cloud_firestore/cloud_firestore.dart';

class RestaurantModel {
  static const ID = 'id';
  static const NAME = 'name';
  static const AVG_PRICE = 'avgPrice';
  static const RATING = 'rating';
  static const RATES = 'rates';
  static const IMAGE = 'image';
  static const POPULAR = 'popular';

  int _id = 0;
  String _name = '';
  double _avgPrice = 0.0;
  double _rating = 0.0;
  int _rates = 0;
  String _image = '';
  bool _popular = '' as bool;

  // Getters
  int get id => _id;
  String get name => _name;
  double get avgPrice => _avgPrice;
  double get rating => _rating;
  int get rates => _rates;
  String get image => _image;
  bool get popular => _popular;

  RestaurantModel.fromSnapshot(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    _id = data[ID]?.toDouble() ?? 0.0;
    _name = data[NAME] ?? '';
    _avgPrice = data[AVG_PRICE]?.toDouble() ?? 0.0;
    _rating = data[RATING]?.toDouble() ?? 0.0;
    _rates = data[RATES]?.toDouble() ?? 0.0;
    _image = data[IMAGE] ?? '';
    _popular = data[POPULAR] ?? '';
  }
}
