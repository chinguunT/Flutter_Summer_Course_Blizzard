import 'dart:typed_data';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethod {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> signUpUser(
      {required String email,
      required String userName,
      required String password,
      required Uint8List? file}) async {
    String result = 'Some error occurred';
    try {
      if (email.isNotEmpty || userName.isNotEmpty || password.isNotEmpty) {
        UserCredential userCredential = await _auth
            .createUserWithEmailAndPassword(email: email, password: password);
        _firestore.collection('users').doc(userCredential.user!.uid).set({
          'username': userName,
          'uid': userCredential.user!.uid,
          'email': email,
          'following': [],
          'followers': []
        });

        result = 'successfully signed up!';
      } else {
        result = 'Please enter all the fields';
      }
    } catch (err) {
      result = err.toString();
    }

    return result;
  }

  Future<String> loginUser(
      {required String email, required String password}) async {
    String result = 'f';
    try {
      if (email.isNotEmpty || password.isNotEmpty) {
        await _auth.signInWithEmailAndPassword(
            email: email, password: password);

        result = 's';
      } else {
        result = 'c';
      }
    } catch (error) {
      result = error.toString();
    }

    return result;
  }
}
