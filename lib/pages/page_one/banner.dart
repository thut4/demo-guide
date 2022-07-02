import 'package:flutter/material.dart';
import 'package:flutter_project/models/data.dart';

import 'IndicatorDot.dart';

class BannerPage extends StatefulWidget {
  const BannerPage({Key? key}) : super(key: key);

  @override
  State<BannerPage> createState() => _BannerPageState();
}

class _BannerPageState extends State<BannerPage> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
        children: <Widget>[
          PageView.builder(
              itemCount: banner.length,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              itemBuilder: (context, index) => ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                    child: Image.asset(banner[index]),
                  )),
          Positioned(
              bottom: 16,
              right: 16,
              child: Row(
                  children: List.generate(
                      banner.length,
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
