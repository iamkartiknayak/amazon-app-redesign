import 'package:flutter/material.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'dart:async';

class AdCarousel extends StatefulWidget {
  const AdCarousel({
    super.key,
  });

  @override
  State<AdCarousel> createState() => _AdCarouselState();
}

class _AdCarouselState extends State<AdCarousel> {
  var currentIndex = 0;
  var isGestureInProgress = false;
  Timer? _timer;

  void startChangingIndex() {
    _timer = Timer.periodic(const Duration(seconds: 3), (timer) {
      setState(() {
        currentIndex++;
        if (currentIndex > 3) {
          currentIndex = 0;
        }
      });
    });
  }

  void updateIndexManual(String direction) {
    setState(() {
      if (direction == 'ltr') {
        if (currentIndex - 1 >= 0) {
          currentIndex -= 1;
        } else {
          currentIndex = 3;
        }
      } else {
        if (currentIndex + 1 <= 3) {
          currentIndex += 1;
        } else {
          currentIndex = 0;
        }
      }
    });
  }

  @override
  void initState() {
    super.initState();
    startChangingIndex();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  var isLeftToRight = false;
  var isRightToLeft = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragStart: (details) {
        isLeftToRight = false;
        isRightToLeft = false;
      },
      onHorizontalDragUpdate: (details) {
        if (!isLeftToRight && !isRightToLeft) {
          final startGestureX = details.globalPosition.dx;
          final currentGestureX = startGestureX + details.delta.dx;

          if (currentGestureX > startGestureX) {
            isLeftToRight = true;
            isRightToLeft = false;
          } else if (currentGestureX < startGestureX) {
            isLeftToRight = false;
            isRightToLeft = true;
          }
        }
      },
      onHorizontalDragEnd: (details) {
        if (isLeftToRight) {
          updateIndexManual('ltr');
        } else {
          updateIndexManual('rtl');
        }
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Container(
              height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.blueGrey,
                borderRadius: BorderRadius.circular(12.0),
              ),
            ),
            Positioned(
              bottom: 0.0,
              child: Container(
                width: 200,
                padding: const EdgeInsets.only(bottom: 5.0),
                child: DotsIndicator(
                  dotsCount: 4,
                  position: currentIndex,
                  decorator: const DotsDecorator(
                    color: Color(0xff242f40),
                    activeColor: Colors.white,
                    size: Size(8, 8),
                    activeSize: Size(8, 8),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
