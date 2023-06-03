import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import './primecheck_symbol.dart';
import '../../common/item_vertical_tile.dart';
import '../../common/custom_text_button.dart';

class SavedItemTile extends StatelessWidget {
  const SavedItemTile({
    super.key,
    required this.title,
    required this.price,
    required this.isInStock,
    required this.patternName,
  });

  final String title;
  final String price;
  final bool isInStock;
  final String patternName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(right: 15.0),
              child: ItemVerticalTile(
                height: 150.0,
                width: 110.0,
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 5.0),
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
                    isInStock
                        ? Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
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
                              const Text(
                                'In stock',
                                style: TextStyle(
                                  color: Colors.green,
                                  fontWeight: FontWeight.w500,
                                  height: 2.0,
                                ),
                              ),
                              Text.rich(
                                TextSpan(
                                  children: [
                                    const TextSpan(
                                      text: 'Pattern Name: ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    TextSpan(text: patternName)
                                  ],
                                ),
                              ),
                            ],
                          )
                        : const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text.rich(
                                TextSpan(
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    height: 2.5,
                                  ),
                                  children: [
                                    TextSpan(text: 'See other '),
                                    TextSpan(
                                      text: 'offers ',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                    TextSpan(text: 'from '),
                                    TextSpan(
                                      text: '₹14,822',
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(height: 5.0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(top: 3.0),
                                    child: FaIcon(
                                      FontAwesomeIcons.circleExclamation,
                                      color: Colors.red,
                                      size: 18.0,
                                    ),
                                  ),
                                  SizedBox(width: 8.0),
                                  Expanded(
                                    child: Text(
                                      'This item is no longer available from the seller you selected.',
                                      style: TextStyle(
                                        color: Colors.red,
                                        // fontWeight: FontWeight.w500,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                  ],
                ),
              ),
            )
          ],
        ),
        isInStock
            ? const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomTextButton(title: 'Delete'),
                  CustomTextButton(title: 'Compare'),
                  CustomTextButton(title: 'Move to Cart'),
                ],
              )
            : const CustomTextButton(title: 'See similar items'),
      ],
    );
  }
}
