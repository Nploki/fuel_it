import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fuel_it/models/user_model.dart';

class UserServices {
  String collection = 'users';
  FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // create a new user
  Future<void> createUserData(Map<String, dynamic> values) async {
    String id = values['id'];
    await _firestore.collection(collection).doc(id).set(values);
  }

  // update user data
  Future<void> updateUserData(Map<String, dynamic> values) async {
    String id = values['id'];
    await _firestore.collection(collection).doc(id).set(values);
  }

  // get user data by user id
  Future<DocumentSnapshot> getUserById(String id) async {
    // DocumentSnapshot doc =
    // await _firestore.collection(collection).doc(id).get().then((doc) {
    //   if (doc.data() == null) {
    //     return null;
    //   }
    //   return UserModel.fromSnapshot(doc);
    // });

    var result = await _firestore.collection(collection).doc(id).get();
    return result;
  }
}
