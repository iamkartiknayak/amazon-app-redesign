import 'package:flutter/material.dart';

class FillerTile extends StatelessWidget {
  const FillerTile({
    super.key,
    this.margin,
    this.borderRadius,
  });

  final EdgeInsetsGeometry? margin;
  final double? borderRadius;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin ?? const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 15.0),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(borderRadius ?? 16.0),
      ),
      height: 230,
      width: double.infinity,
    );
  }
}
