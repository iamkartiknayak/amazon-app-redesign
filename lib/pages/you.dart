import 'package:flutter/material.dart';

import '../model/data.dart';
import '../common/category_header.dart';
import '../widgets/you/topbar_button.dart';
import '../common/build_product_tiles.dart';
import '../widgets/you/current_order_tile.dart';
import '../widgets/you/amazon_service_tile.dart';

final data = DataModel();

class YouPage extends StatefulWidget {
  const YouPage({super.key});

  @override
  State<YouPage> createState() => _YouPageState();
}

class _YouPageState extends State<YouPage> {
  final _scrollController = ScrollController();
  var scrollPercent = 0.0;

  void getScrollPercentage() {
    if (_scrollController.hasClients) {
      double maxScrollExtent = _scrollController.position.maxScrollExtent;
      double currentScrollOffset = _scrollController.offset;
      double scrollPercentage = currentScrollOffset / maxScrollExtent;
      setState(() {
        scrollPercent = scrollPercentage;
      });
    } else {
      scrollPercent = 0.0;
    }
  }

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(() {
      getScrollPercentage();
    });
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

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
              child: Column(
                children: [
                  AnimatedContainer(
                    curve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 600),
                    height: scrollPercent >= 0.2 ? 0 : 65,
                    child: const Padding(
                      padding: EdgeInsets.fromLTRB(20.0, 25.0, 20.0, 0.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text.rich(
                            TextSpan(
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20.0,
                              ),
                              children: [
                                TextSpan(
                                  text: 'Namaste, ',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                                TextSpan(
                                  text: 'Kartik',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CircleAvatar(
                            radius: 20,
                            backgroundImage:
                                AssetImage('assets/images/user.png'),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.fromLTRB(25.0, 20.0, 25.0, 15.0),
                    child: GridView.builder(
                      itemCount: data.accountTopbarOptions.length,
                      shrinkWrap: true,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 1 / 0.35,
                      ),
                      itemBuilder: (context, index) {
                        return TopBarButton(
                          title: data.accountTopbarOptions[index],
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                controller: _scrollController,
                children: [
                  const CategoryHeader(
                    title: 'Amazon services within app',
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Row(
                      children: [
                        AmazonServiceTile(
                          imagePath: 'assets/images/pay_logo2.png',
                          serviceName: 'Amazon Pay',
                        ),
                        SizedBox(width: 20.0),
                        AmazonServiceTile(
                          imagePath: 'assets/images/minitv_logo.png',
                          serviceName: 'Amazon miniTV',
                        ),
                      ],
                    ),
                  ),
                  CategoryHeader(
                    title:
                        'Track current order (${data.currentOrders.length} items)',
                  ),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    height: 185.0,
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemCount: data.currentOrders.length,
                      physics: const PageScrollPhysics(),
                      padding: const EdgeInsets.only(left: 20.0),
                      itemBuilder: (context, index) {
                        return CurrentOrderTile(
                          title: data.currentOrders[index][0],
                          price: data.currentOrders[index][1],
                          isInStock: data.currentOrders[index][2],
                          eta: data.currentOrders[index][3],
                        );
                      },
                      separatorBuilder: (context, index) {
                        return const SizedBox(width: 20.0);
                      },
                    ),
                  ),
                  const CategoryHeader(
                    title: 'Keep shopping for',
                  ),
                  const BuildProductTiles(
                    index: 1,
                  ),
                  const CategoryHeader(
                    title: 'Curated for you',
                  ),
                  const BuildProductTiles(
                    index: 0,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
