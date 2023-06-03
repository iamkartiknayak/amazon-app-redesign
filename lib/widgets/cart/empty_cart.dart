import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class EmptyCartWidget extends StatelessWidget {
  const EmptyCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10.0, 20.0, 0.0, 20.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Lottie.asset(
              'assets/lottie/empty_cart.json',
              width: 90.0,
              repeat: false,
            ),
          ),
          const SizedBox(width: 20.0),
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'You Amazon Cart is empty',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'Pick up where you left off',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 15.0,
                  height: 1.8,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
