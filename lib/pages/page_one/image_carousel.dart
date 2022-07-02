import 'package:flutter/material.dart';
import 'package:flutter_project/models/data.dart';

import 'IndicatorDot.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({Key? key}) : super(key: key);

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        children: <Widget>[
          PageView.builder(
              itemCount: bigImages.length,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              itemBuilder: (context, index) => ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: Image.asset(bigImages[index]),
                  )),
          Positioned(
              bottom: 16,
              right: 16,
              child: Row(
                  children: List.generate(
                      bigImages.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(left: 4),
                            child: IndicatorDot(
                              isActive: index == _currentPage,
                            ),
                          ))))
        ],
      ),
    );
  }
}
