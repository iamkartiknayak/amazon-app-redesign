import 'package:flutter/material.dart';

import '../common/filler_tile.dart';
import '../widgets/home/top_bar.dart';
import '../widgets/home/searchbar.dart';
import '../common/category_header.dart';
import '../widgets/home/ad_acrousel.dart';
import '../common/build_product_tiles.dart';
import '../widgets/home/build_collection.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AnimatedContainer(
                    curve: Curves.easeInOut,
                    duration: const Duration(milliseconds: 600),
                    height: scrollPercent >= 0.2 ? 0 : 85,
                    child: Visibility(
                      visible: scrollPercent >= 0.2 ? false : true,
                      child: const TopBar(),
                    ),
                  ),
                  Visibility(
                    visible: scrollPercent >= 0.2,
                    child: const SizedBox(height: 15.0),
                  ),
                  const Searchbar(hintText: 'What are you looking for'),
                  const SizedBox(height: 12.0),
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 20.0),
                        child: Text(
                          'Best Collections',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      CollectionTiles()
                    ],
                  ),
                ],
              ),
            ),
            Expanded(
              child: ListView(
                controller: _scrollController,
                children: [
                  const SizedBox(height: 15.0),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CategoryHeader(
                          padding: EdgeInsets.all(0),
                          title: 'Popular Products',
                        ),
                        Text(
                          'View All',
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontSize: 12.5,
                            fontWeight: FontWeight.w500,
                          ),
                        )
                      ],
                    ),
                  ),
                  const BuildProductTiles(index: 0),
                  const SizedBox(height: 12.0),
                  const AdCarousel(),
                  const CategoryHeader(
                    title: 'Inspired by you shopping trends',
                  ),
                  const BuildProductTiles(index: 1),
                  const CategoryHeader(
                    title: 'Recommended deal for you',
                  ),
                  const FillerTile(),
                  const CategoryHeader(
                    title: 'Minimum 50% off | Home shopping spree',
                  ),
                  GridView.builder(
                    itemCount: 4,
                    shrinkWrap: true,
                    padding: const EdgeInsets.fromLTRB(20.0, 0.0, 20.0, 10.0),
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return const FillerTile(
                        margin: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 5.0),
                        borderRadius: 12.0,
                      );
                      // return Container(color: Colors.blueGrey);
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
