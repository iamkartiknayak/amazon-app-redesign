import 'package:flutter/material.dart';

class PlatformAuthButton extends StatelessWidget {
  const PlatformAuthButton({
    super.key,
    required this.imagePath,
    required this.authType,
    required this.platformName,
  });

  final String imagePath;
  final String authType;
  final String platformName;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            imagePath,
            height: 23,
            fit: BoxFit.contain,
          ),
          const SizedBox(width: 10.0),
          Padding(
            padding: const EdgeInsets.only(top: 3.0),
            child: Text(
              '$authType WITH $platformName',
              style: const TextStyle(fontWeight: FontWeight.w500),
            ),
          )
        ],
      ),
    );
  }
}
