import 'package:firebase_auth/firebase_auth.dart';

class Users {
  final String uid;

  Users({required this.uid});
}

abstract class AuthBase {
  Future<Users> currentUser();
  Future<Users> signInAnonymously();
  Future<void> signOut();
}

class Auth implements AuthBase {
  final _firebaseAuth = FirebaseAuth.instance;

  Users _userFromFirebase(User user) {
    return Users(uid: user.uid);
  }

  @override
  Future<Users> currentUser() async {
    final user = _firebaseAuth.currentUser!;
    return _userFromFirebase(user);
  }

  @override
  Future<Users> signInAnonymously() async {
    final authResult = await _firebaseAuth.signInAnonymously();
    return _userFromFirebase(authResult.user!);
  }

  @override
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }
}
