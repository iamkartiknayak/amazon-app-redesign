import 'package:flutter/material.dart';

import '../../common/custom_text_button.dart';
import '../cart/primecheck_symbol.dart';
import '../../common/item_vertical_tile.dart';

class CurrentOrderTile extends StatelessWidget {
  const CurrentOrderTile({
    super.key,
    required this.title,
    required this.price,
    required this.isInStock,
    required this.eta,
  });

  final String title;
  final String price;
  final bool isInStock;
  final String eta;

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    return Container(
      width: screenWidth - 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              top: 10.0,
              right: 15.0,
            ),
            child: ItemVerticalTile(
              height: 170.0,
              width: 120.0,
            ),
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.only(top: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        '₹$price',
                        style: const TextStyle(
                          fontSize: 22.0,
                          fontWeight: FontWeight.bold,
                          height: 1.8,
                        ),
                      ),
                      const AmazonPrimeCheckWidget()
                    ],
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        const TextSpan(
                          text: 'ETA: ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: eta,
                          style: const TextStyle(fontWeight: FontWeight.w500),
                        )
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(right: 15.0),
                    child: CustomTextButton(title: 'Track Order'),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
