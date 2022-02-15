import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/button_without_icon.dart';
import '../../widgets/buttons.dart';
import '../../services/auth.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key, required this.onSignIn, required this.auth})
      : super(key: key);

  final Function(Users) onSignIn;
  final AuthBase auth;

  void _signInAnonymously() async {
    try {
      Users user = await auth.signInAnonymously();
      onSignIn(user);
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Tracker'),
      ),
      body: Column(
        children: [
          Lottie.network(
            'https://assets6.lottiefiles.com/packages/lf20_1pxqjqps.json',
            height: 150.0,
            width: 190.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(height: 20.0),
          Column(
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
                onTab: () {
                  _signInAnonymously();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
