import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/restaurant.dart';

class RestaurantServices {
  String collection = 'restaurants';
  FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<List<RestaurantModel>> getRestaurants() async {
    QuerySnapshot result =
        await _firebaseFirestore.collection(collection).get();
    List<RestaurantModel> restaurants = [];
    for (DocumentSnapshot restaurants in result.docs) {
      restaurants.add(RestaurantModel.fromSnapshot(restaurants));
    }
    return restaurants;
  }
}
