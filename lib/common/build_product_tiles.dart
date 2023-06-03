import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../model/data.dart';
import './item_vertical_tile.dart';

final data = DataModel();

class BuildProductTiles extends StatefulWidget {
  const BuildProductTiles({
    super.key,
    this.margin,
    required this.index,
  });

  final int index;
  final EdgeInsetsGeometry? margin;

  @override
  State<BuildProductTiles> createState() => _BuildProductTilesState();
}

class _BuildProductTilesState extends State<BuildProductTiles> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      child: ListView.separated(
        padding:
            widget.margin ?? const EdgeInsets.only(left: 20.0, right: 10.0),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Align(
            child: Stack(
              children: [
                const ItemVerticalTile(),
                Positioned(
                  top: 10.0,
                  right: 10.0,
                  child: Container(
                    padding: const EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: const Color(0xff223040),
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: GestureDetector(
                      onTap: () => setState(() {
                        if (widget.index == 0) {
                          data.popularProducts[index][2] =
                              !data.popularProducts[index][2];
                        } else {
                          data.inspiredProducts[index][2] =
                              !data.inspiredProducts[index][2];
                        }
                      }),
                      child: FaIcon(
                        (widget.index == 0
                                ? data.popularProducts[index][2]
                                : data.inspiredProducts[index][2])
                            ? FontAwesomeIcons.solidHeart
                            : FontAwesomeIcons.heart,
                        color: (index == 0
                                ? data.popularProducts[index][2]
                                : data.inspiredProducts[index][2])
                            ? Colors.white
                            : Colors.grey.shade300,
                        size: 18.0,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0.0,
                  child: Container(
                    width: 140,
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Colors.black, Colors.transparent],
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                      ),
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.index == 0
                                ? '₹ ${data.popularProducts[index][1]}'
                                : '₹ ${data.inspiredProducts[index][1]}',
                            style: const TextStyle(
                              color: Colors.orange,
                              fontSize: 12.0,
                            ),
                          ),
                          Row(
                            children: [
                              Expanded(
                                child: Text(
                                  widget.index == 0
                                      ? data.popularProducts[index][0]
                                      : data.inspiredProducts[index][0],
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12.5,
                                  ),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 8.0)
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          );
        },
        separatorBuilder: (context, index) {
          return const SizedBox(width: 20.0);
        },
        itemCount: 7,
      ),
    );
  }
}
