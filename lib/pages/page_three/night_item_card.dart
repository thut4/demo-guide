import 'package:flutter/material.dart';
//import 'package:flutter_project/provider/theme.dart';

import '../../models/data.dart';
import '../../provider/theme.dart';

class NightItemCard extends StatelessWidget {
  final NightShop nightShop;
  final VoidCallback press;
  const NightItemCard({
    Key? key,
    required this.nightShop,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
              child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: BorderRadius.circular(16)),
            child: Image.asset(
              nightShop.nsImage!,
              fit: BoxFit.cover,
            ),
          )),
          Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: Text(
                nightShop.nsTitle!,
                style: MyThemes.darkTextTheme.headline2!.copyWith(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Roboto"),
              )),
          Text(
            nightShop.nsLocation!,
            style: MyThemes.darkTextTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
