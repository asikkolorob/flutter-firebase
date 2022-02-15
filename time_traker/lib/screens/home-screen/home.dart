import 'package:flutter/material.dart';

import '../../services/auth.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key, required this.onSignOut,required this.auth}) : super(key: key);

  final VoidCallback onSignOut;
  final AuthBase auth;

  void _signOut() async {
    try {
      await auth.signOut();
      onSignOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        actions: [
          IconButton(
            onPressed: () {
              _signOut();
            },
            icon: const Icon(Icons.logout_rounded),
          ),
        ],
      ),
    );
  }
}
