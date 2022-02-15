import 'package:flutter/material.dart';

import '../screens/signin-screen/signin.dart';
import '../screens/home-screen/home.dart';
import '../services/auth.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key, required this.auth}) : super(key: key);

  final AuthBase auth;

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  Users? _user;

  void _updateUser(Users user) {
    setState(() {
      _user = user;
    });
  }

  @override
  void initState() {
    super.initState();
    _checkCurrentUser();
  }

  Future<void> _checkCurrentUser() async {
    Users user = await widget.auth.currentUser();
    _updateUser(user);
  }

  @override
  Widget build(BuildContext context) {
    if (_user == null) {
      return SignInScreen(
        onSignIn: _updateUser,
        auth: widget.auth,
      );
    } else {
      return HomeScreen(
        auth: widget.auth,
        onSignOut: () {
          setState(() {
            _user = null;
          });
        },
      );
    }
  }
}
