import 'package:flutter/material.dart';
import 'package:flutter_yoga_uygulamasi/screens/login/BackgroundImage.dart';
import 'package:flutter_yoga_uygulamasi/screens/login/circle_buytton.dart';
import 'package:flutter_yoga_uygulamasi/screens/login/login_credentials.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.topCenter,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                BackgroundImage(),
                LoginCredentials(),
              ],
            ),
            CircleButton(),
          ],
        ),
      ),
    );
  }
}
