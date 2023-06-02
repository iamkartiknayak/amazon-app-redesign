import 'package:flutter/material.dart';

class CategoryHeader extends StatelessWidget {
  const CategoryHeader({
    super.key,
    required this.title,
    this.padding,
  });

  final String title;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? const EdgeInsets.only(left: 20.0, top: 15.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
