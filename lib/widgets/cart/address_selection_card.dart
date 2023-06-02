import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AddressSelectionCard extends StatelessWidget {
  const AddressSelectionCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      decoration: BoxDecoration(
        color: const Color(0xff394550),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: const Row(
        crossAxisAlignment: CrossAxisAlignment.baseline,
        textBaseline: TextBaseline.alphabetic,
        children: [
          SizedBox(width: 15.0),
          FaIcon(
            FontAwesomeIcons.locationDot,
            color: Colors.white,
          ),
          SizedBox(width: 10.0),
          Text(
            'Deliver to Kartik - Mumbai 400001',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
          Spacer(),
          FaIcon(
            FontAwesomeIcons.chevronRight,
            color: Colors.white,
            size: 16.0,
          ),
          SizedBox(width: 15.0)
        ],
      ),
    );
  }
}
