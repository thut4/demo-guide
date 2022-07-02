import 'package:flutter/material.dart';

import '../../models/data.dart';
import '../../provider/theme.dart';

class ItemWithImage extends StatelessWidget {
  const ItemWithImage({
    Key? key,
    required this.shop,
  }) : super(key: key);

  final Shop shop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          //Text("Pizza", style: MyThemes.darkTextTheme.bodyText1),
          Text(
            shop.title!,
            style: MyThemes.darkTextTheme.headline2!
                .copyWith(fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: "Location -${shop.location!}",
                    style: MyThemes.darkTextTheme.bodyText1!.copyWith(
                        color: const Color.fromARGB(255, 44, 186, 49),
                        fontSize: 16,
                        fontWeight: FontWeight.bold))
              ])),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Image.asset(
                shop.image!,
                fit: BoxFit.cover,
              )),
            ],
          )
        ],
      ),
    );
  }
}
