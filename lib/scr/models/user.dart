import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  static const NAME = 'name';
  static const EMAIL = 'email';
  static const ID = 'id';
  static const STRIPE_ID = 'stripeId';

  late final String _name;
  late final String _email;
  late final String _id;
  late final String _stripeId;

  // Getters
  String get name => _name;
  String get email => _email;
  String get id => _id;
  String get stripeId => _stripeId;

  UserModel.fromSnapshot(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    _name = data[NAME] ?? '';
    _email = data[EMAIL] ?? '';
    _id = data[ID] ?? '';
    _stripeId = data[STRIPE_ID] ?? '';
  }
}
