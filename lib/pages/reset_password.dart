import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../common/auth_button.dart';
import '../common/auth_textfield.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: 20,
                left: 0.0,
                child: GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: const FaIcon(FontAwesomeIcons.arrowLeft),
                ),
              ),
              const Positioned(
                bottom: 15.0,
                child: Text(
                  '© 1996-2023, Amazon.com, Inc, or its affiliate',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: 175.0,
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  const Text(
                    'Password assistance',
                    style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  const Text(
                      'Enter the email address or mobile phone number associated with your Amazon account.'),
                  const SizedBox(height: 20.0),
                  const AuthTextField(
                    hintText: 'Email or mobile number',
                    keyboardType: TextInputType.name,
                  ),
                  AuthButton(
                    onTap: () =>
                        Navigator.pushReplacementNamed(context, '/loginPage'),
                    title: 'Continue',
                  ),
                  const SizedBox(height: 30.0),
                  const Text(
                    'Has your email or mobile number changed?',
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w700,
                      height: 1.5,
                    ),
                  ),
                  const Text.rich(
                    TextSpan(
                      style: TextStyle(fontSize: 14.0, height: 1.5),
                      children: [
                        TextSpan(
                            text:
                                'If you no longer use the email or mobile number associated with your Amazon account, you may contact '),
                        TextSpan(
                          text: 'Customer Service ',
                          style: TextStyle(color: Colors.blue),
                        ),
                        TextSpan(
                            text: 'for help restoring access to your account.'),
                      ],
                    ),
                  ),
                  const SizedBox(height: 50.0),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Text(
                        'Conditions of Use',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text(
                        'Privacy Notice',
                        style: TextStyle(color: Colors.blue),
                      ),
                      Text(
                        'Help',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30.0)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
