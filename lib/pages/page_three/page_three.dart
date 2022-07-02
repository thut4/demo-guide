import 'package:flutter/material.dart';
import 'package:flutter_project/pages/page_three/night_item_card.dart';

import '../../models/data.dart';
import 'night_detail_page.dart';

class PageThree extends StatelessWidget {
  const PageThree({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        // Padding(
        //   padding: EdgeInsets.symmetric(horizontal: 16),
        //   child: ImageCarousel(),
        // ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: GridView.builder(
                itemCount: nightShop.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 1,
                  childAspectRatio: 0.75,
                  mainAxisSpacing: 20,
                  crossAxisSpacing: 20,
                ),
                itemBuilder: (context, index) => NightItemCard(
                    nightShop: nightShop[index],
                    press: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              NightDetailPage(nightShop: nightShop[index]),
                        )))),
          ),
        ),
      ],
    );
  }
}
