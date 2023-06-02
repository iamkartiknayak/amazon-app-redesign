import 'package:flutter/material.dart';

class AmazonServiceTile extends StatelessWidget {
  const AmazonServiceTile({
    super.key,
    required this.imagePath,
    required this.serviceName,
  });

  final String imagePath;
  final String serviceName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 55.0,
          margin: const EdgeInsets.only(top: 15.0),
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            border: Border.all(color: Colors.grey.shade200),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Image.asset(
            imagePath,
            width: 60.0,
          ),
        ),
        Text(
          serviceName,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            height: 2.0,
          ),
        )
      ],
    );
  }
}
