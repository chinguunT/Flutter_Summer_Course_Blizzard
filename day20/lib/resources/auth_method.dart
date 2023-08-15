import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser(
      {required String phoneNumber,
      required String userName,
      required String password}) async {
    String result = 'Some error occured';
    try {
      if (phoneNumber.isNotEmpty || userName.isNotEmpty || password.isNotEmpty){
        UserCredential userCredential = await _auth.createUserWithEmailAndPassword(email: phoneNumber, password: password);
        _firestore.collection('users').doc(userCredential.user!.uid).set({
          'username': userName,
          'uid': userCredential.user!.uid,
          'email': phoneNumber,
          'following': [],
          'followers': []
        });

        result = 'succes';
      }
    } catch (err) {
      result = err.toString();
    }

    return result;
  }
}
