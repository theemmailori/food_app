import 'package:cloud_firestore/cloud_firestore.dart';

class OrderModel {
  static const ID = 'id';
  static const DESCRIPTION = 'description';
  static const PRODUCT_ID = 'productId';
  static const USER_ID = 'userId';
  static const AMOUNT = 'amount';
  static const STATUS = 'status';
  static const CREATED_AT = 'createdAt';

  String _id = '';
  String _description = '';
  String _productId = '';
  String _userId = '';
  int _amount = 0;
  String _status = '';
  int _createdAt = 0;

  // Getters
  String get id => _id;
  String get description => _description;
  String get productId => _productId;
  String get userId => _userId;
  int get amount => _amount;
  String get status => _status;
  int get createdAt => _createdAt;

  OrderModel.fromSnapshot(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    _id = data[ID] ?? '';
    _description = data[DESCRIPTION] ?? '';
    _productId = data[PRODUCT_ID] ?? '';
    _userId = data[USER_ID] ?? '';
    _amount = data[AMOUNT]?.toDouble() ?? 0.0;
    _status = data[STATUS] ?? '';
    _createdAt = data[CREATED_AT]?.toDouble() ?? 0.0;
  }
}
