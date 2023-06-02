import 'package:flutter/material.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.title,
    required this.screenWidth,
    required this.onTap,
  });

  final String title;
  final double screenWidth;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: screenWidth - 40.0,
        height: 50.0,
        decoration: BoxDecoration(
          color: const Color(0xffffd814),
          borderRadius: BorderRadius.circular(12.0),
          gradient: LinearGradient(
            begin: Alignment.centerLeft,
            end: Alignment.centerRight,
            colors: [Colors.orange.shade400, Colors.orange.shade600],
          ),
        ),
        child: Center(
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15.5,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
