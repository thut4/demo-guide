import 'package:flutter/material.dart';
import 'package:flutter_project/provider/theme.dart';

import '../../models/data.dart';

class ItemCard extends StatelessWidget {
  final Shop shop;
  final VoidCallback press;
  const ItemCard({
    Key? key,
    required this.shop,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              // height: 180,
              // width: 160,
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(16)),
              child: Image.asset(
                shop.image!,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: Text(
              shop.title!,
              style: MyThemes.darkTextTheme.headline3,
            ),
          ),
          Text(
            shop.location!,
            style: MyThemes.darkTextTheme.bodyText1,
          ),
        ],
      ),
    );
  }
}
