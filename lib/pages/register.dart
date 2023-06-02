import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

import './login.dart';
import '../common/auth_button.dart';
import '../common/auth_textfield.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    final gestureRecognizer = TapGestureRecognizer()
      ..onTap = () {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const LoginPage();
            },
          ),
        );
      };

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              const Positioned(
                bottom: 15.0,
                child: Text(
                  '© 1996-2023, Amazon.com, Inc, or its affiliate',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListView(
                children: [
                  SizedBox(height: screenHeight / 6),
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: screenWidth / 2.3,
                    ),
                  ),
                  const SizedBox(height: 30.0),
                  const AuthTextField(
                    hintText: 'Full Name',
                    keyboardType: TextInputType.name,
                  ),
                  const AuthTextField(
                    hintText: 'Email',
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const AuthTextField(
                    hintText: 'Password',
                    isPassword: true,
                    keyboardType: TextInputType.visiblePassword,
                    isNewUser: true,
                  ),
                  const SizedBox(height: 15.0),
                  AuthButton(
                    onTap: () => Navigator.pushReplacementNamed(
                        context, '/bottomNavbar'),
                    screenWidth: screenWidth,
                    title: 'REGISTER',
                  ),
                  const SizedBox(height: 15.0),
                  const Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                            text:
                                'By creating an account, you agree to Amazon\'s '),
                        TextSpan(
                          text: 'Conditions of Use ',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(text: 'and '),
                        TextSpan(
                          text: 'Privacy Notice.',
                          style: TextStyle(color: Colors.blue),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30.0),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(text: 'Already a customer? '),
                          TextSpan(
                            recognizer: gestureRecognizer,
                            text: 'Login here',
                            style: const TextStyle(
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
