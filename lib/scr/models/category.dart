import 'package:cloud_firestore/cloud_firestore.dart';

class CategoryModel {
  static const ID = "id";
  static const NAME = "name";
  static const IMAGE = "image";

  int _id = 0;
  String _name = '';
  String _image = '';

  //  getters
  int get id => _id;
  String get name => _name;
  String get image => _image;

  CategoryModel.fromSnapshot(DocumentSnapshot snapshot) {
    Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
    _id = data[ID]?.floor() ?? 0;
    _name = data[NAME] ?? '';
    _image = data[IMAGE] ?? '';
  }
}
