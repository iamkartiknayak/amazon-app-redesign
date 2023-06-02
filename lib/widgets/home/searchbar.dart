import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Searchbar extends StatelessWidget {
  const Searchbar({
    super.key,
    required this.hintText,
  });

  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 5.0,
      ),
      padding: const EdgeInsets.symmetric(
        horizontal: 10.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        children: [
          const SizedBox(width: 8.0),
          const FaIcon(
            FontAwesomeIcons.magnifyingGlass,
            color: Color(0xff707070),
          ),
          const SizedBox(width: 10.0),
          Text(
            hintText,
            style: const TextStyle(
              color: Color(0xff707070),
            ),
          ),
          const Spacer(),
          const SizedBox(width: 20.0),
          const Icon(
            Icons.qr_code_scanner_rounded,
            color: Color(0xff707070),
            size: 22.5,
          ),
          const SizedBox(width: 20.0),
          const FaIcon(
            FontAwesomeIcons.microphone,
            color: Color(0xff707070),
          ),
          const SizedBox(width: 10.0),
        ],
      ),
    );
  }
}
