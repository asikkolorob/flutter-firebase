import 'package:flutter/material.dart';

import '../../widgets/button_without_icon.dart';
import '../../widgets/buttons.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Tracker'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Align(
            alignment: Alignment.center,
            child: Text(
              'Sign In',
              style: TextStyle(fontSize: 35.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(height: 40.0),
          Button(
            text: 'Sign in with Google',
            imageUrl: 'assets/google.png',
            onTab: () {},
            color: Colors.white,
            textColor: Colors.black,
            pading: 65,
          ),
          Button(
            text: 'Sign in with Facebook',
            imageUrl: 'assets/facebook.png',
            color: const Color.fromARGB(255, 77, 96, 202),
            textColor: Colors.white,
            onTab: () {},
            pading: 56,
          ),
          ButtonWithOutIcon(
            text: 'Sign in with Email',
            color: const Color.fromARGB(255, 6, 136, 123),
            textColor: Colors.white,
            onTab: () {},
          ),
          const Align(
            alignment: Alignment.center,
            child: Text(
              'or',
              style: TextStyle(fontSize: 20.0),
            ),
          ),
          ButtonWithOutIcon(
            text: 'Go anonymous',
            color: const Color.fromARGB(255, 233, 221, 59),
            textColor: Colors.black,
            onTab: () {},
          ),
        ],
      ),
    );
  }
}