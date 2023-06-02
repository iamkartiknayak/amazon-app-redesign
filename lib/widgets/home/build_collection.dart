import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../model/data.dart';

final data = DataModel();

class CollectionTiles extends StatelessWidget {
  const CollectionTiles({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 105.0,
      child: ListView.separated(
        padding: const EdgeInsets.only(left: 20.0, top: 15.0, right: 15.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                height: 48.0,
                width: 55.0,
                decoration: BoxDecoration(
                  color: const Color(0xff394550),
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Center(
                  child: FaIcon(
                    data.bestCollection[index][0],
                    color: Colors.white,
                    size: 18.0,
                  ),
                ),
              ),
              const SizedBox(height: 5.0),
              Text(
                data.bestCollection[index][1],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 12.0,
                ),
              )
            ],
          );
        },
        separatorBuilder: (BuildContext context, int index) {
          return const SizedBox(width: 18.0);
        },
        itemCount: data.bestCollection.length,
      ),
    );
  }
}
