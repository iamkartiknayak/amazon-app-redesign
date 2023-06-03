import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AmazonPayAd extends StatelessWidget {
  const AmazonPayAd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10.0),
      padding: const EdgeInsets.fromLTRB(20.0, 12.0, 10.0, 12.0),
      decoration: BoxDecoration(
        color: const Color(0xfffff1e4),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(10.0),
            decoration: BoxDecoration(
              color: Colors.orange.shade600,
              shape: BoxShape.circle,
            ),
            child: const FaIcon(
              FontAwesomeIcons.solidCalendar,
              color: Color(0xff242f40),
            ),
          ),
          const SizedBox(width: 20.0),
          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Amazon Pay Later | Get instant credit upto ₹60,000',
                  style: TextStyle(fontWeight: FontWeight.w500, height: 1.2),
                ),
                Text.rich(
                  TextSpan(
                    style: TextStyle(fontWeight: FontWeight.bold, height: 1.8),
                    children: [
                      TextSpan(text: 'Activate and get rewards of '),
                      TextSpan(
                        text: '₹600 ',
                        style: TextStyle(color: Colors.red),
                      ),
                      TextSpan(text: '>'),
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
