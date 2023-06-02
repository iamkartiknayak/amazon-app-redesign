import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class TopBar extends StatelessWidget {
  const TopBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 0.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const FaIcon(
            FontAwesomeIcons.barsStaggered,
            color: Colors.white,
            size: 25.0,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Image.asset(
              'assets/images/logo2.png',
              height: 28.0,
            ),
          ),
          const CircleAvatar(
            radius: 20,
            backgroundImage: AssetImage('assets/images/user.png'),
          ),
        ],
      ),
    );
  }
}
