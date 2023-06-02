import 'package:amazon_redesign/common/build_product_tiles.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import '../model/data.dart';
import '../common/category_header.dart';
import '../widgets/home/searchbar.dart';
import '../widgets/cart/empty_cart.dart';
import '../widgets/cart/amazonpay_ad.dart';
import '../widgets/cart/saved_item_tile.dart';
import '../widgets/cart/address_selection_card.dart';

final data = DataModel();

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              decoration: const BoxDecoration(
                color: Color(0xff223040),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                ),
              ),
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 15.0),
                child: Searchbar(
                  hintText: 'Search for products',
                ),
              ),
            ),
            const AddressSelectionCard(),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ListView(
                  children: [
                    const EmptyCartWidget(),
                    const AmazonPayAd(),
                    const Divider(
                      color: kPrimaryColor,
                    ),
                    CategoryHeader(
                      padding: const EdgeInsets.only(top: 5.0),
                      title:
                          'Saved for later (${data.savedForLater.length} items)',
                    ),
                    ListView.separated(
                      shrinkWrap: true,
                      itemCount: data.savedForLater.length,
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      physics: const NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return SavedItemTile(
                          title: data.savedForLater[index][0],
                          price: data.savedForLater[index][1],
                          isInStock: data.savedForLater[index][2],
                          patternName: data.savedForLater[index][3],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          height: 50.0,
                          child: Divider(
                            color: Colors.grey.shade200,
                          ),
                        );
                      },
                    ),
                    const CategoryHeader(
                      padding: EdgeInsets.only(bottom: 10.0),
                      title: 'Buy again',
                    ),
                    const BuildProductTiles(
                      index: 1,
                      margin: EdgeInsets.all(0),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
