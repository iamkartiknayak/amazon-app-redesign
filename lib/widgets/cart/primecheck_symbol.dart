import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AmazonPrimeCheckWidget extends StatelessWidget {
  const AmazonPrimeCheckWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 8.0),
      child: Row(
        children: [
          FaIcon(
            FontAwesomeIcons.check,
            color: Colors.orange,
            size: 15.0,
          ),
          Text(
            'prime',
            style: TextStyle(
              color: Colors.blue,
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
