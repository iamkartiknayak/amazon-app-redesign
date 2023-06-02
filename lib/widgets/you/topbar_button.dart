import 'package:flutter/material.dart';

class TopBarButton extends StatelessWidget {
  const TopBarButton({
    super.key,
    required this.title,
  });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      constraints: const BoxConstraints(minWidth: 100, maxHeight: 40.0),
      margin: const EdgeInsets.only(right: 20.0, bottom: 15.0),
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      decoration: BoxDecoration(
        color: const Color(0xff394550),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
