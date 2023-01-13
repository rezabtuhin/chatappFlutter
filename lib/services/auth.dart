import 'package:firebase_auth/firebase_auth.dart';
import 'package:mychatapp/services/database_service.dart';

class AuthService {
  // final FirebaseAuth _auth = FirebaseAuth.instance;

  // Future registerUserWithEmailAndPassword(
  //     String fullname, String email, String password) async {
  //   try {
  //     User user = (await _auth.createUserWithEmailAndPassword(
  //             email: email, password: password))
  //         .user!;
  //     if (user != null) {
  //       await DatabaseService(uid: user.uid).updateUserData(fullname, email);
  //       return true;
  //     }
  //   } on FirebaseAuthException catch (e) {
  //     print(e);
  //     return e;
  //   }
  // }
}
