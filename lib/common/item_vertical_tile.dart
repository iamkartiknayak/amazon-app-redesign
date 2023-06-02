import 'package:flutter/material.dart';

class ItemVerticalTile extends StatelessWidget {
  const ItemVerticalTile({
    super.key,
    this.height,
    this.width,
  });

  final double? height;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 210,
      width: width ?? 140.0,
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(12.0),
      ),
    );
  }
}
