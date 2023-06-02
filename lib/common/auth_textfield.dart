// import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AuthTextField extends StatefulWidget {
  const AuthTextField({
    super.key,
    required this.hintText,
    this.isPassword,
    this.keyboardType,
    this.isNewUser,
  });

  final String hintText;
  final bool? isPassword;
  final TextInputType? keyboardType;
  final bool? isNewUser;

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  var passwordLength = 0;
  var isVisible = false;

  void onTextChanged(String password) {
    setState(() {
      passwordLength = password.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15.0),
      child: TextField(
        style: const TextStyle(fontWeight: FontWeight.w500),
        cursorColor: Colors.orange,
        keyboardType: widget.keyboardType,
        onChanged: onTextChanged,
        obscureText: !isVisible && widget.isPassword == true,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffix: widget.isPassword == true
              ? Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    passwordLength > 0
                        ? GestureDetector(
                            onTap: () => setState(() {
                              isVisible = !isVisible;
                            }),
                            child: Padding(
                              padding: const EdgeInsets.only(right: 15.0),
                              child: FaIcon(
                                isVisible
                                    ? FontAwesomeIcons.eye
                                    : FontAwesomeIcons.eyeSlash,
                                color: Colors.grey.shade600,
                                size: 18.0,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                    widget.isNewUser != true
                        ? GestureDetector(
                            onTap: () => Navigator.pushNamed(
                                context, '/resetPasswordPage'),
                            child: const Text(
                              'Forgot',
                              style: TextStyle(
                                color: Colors.blue,
                                fontSize: 15.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          )
                        : const SizedBox.shrink(),
                  ],
                )
              : const SizedBox.shrink(),
        ),
      ),
    );
  }
}
