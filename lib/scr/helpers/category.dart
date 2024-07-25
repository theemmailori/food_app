import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/category.dart';

class CategoryServices {
  String collection = 'categories';
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<CategoryModel>> getCategories() async {
    QuerySnapshot result =
        await _firebaseFirestore.collection(collection).get();
    List<CategoryModel> categories = [];
    for (DocumentSnapshot category in result.docs) {
      categories.add(CategoryModel.fromSnapshot(category));
    }
    return categories;
  }
}
