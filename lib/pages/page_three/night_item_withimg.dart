import 'package:flutter/material.dart';

import '../../models/data.dart';
import '../../provider/theme.dart';

class NightItemWithImage extends StatelessWidget {
  const NightItemWithImage({
    Key? key,
    required this.nightShop,
  }) : super(key: key);

  final NightShop nightShop;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            nightShop.nsTitle!,
            style: MyThemes.darkTextTheme.headline2!
                .copyWith(fontWeight: FontWeight.bold, fontSize: 25),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              RichText(
                  text: TextSpan(children: [
                TextSpan(
                    text: nightShop.nsLocation!,
                    style: MyThemes.darkTextTheme.bodyText1!.copyWith(
                        color: const Color.fromARGB(255, 191, 167, 242),
                        fontSize: 20,
                        fontWeight: FontWeight.bold))
              ])),
              const SizedBox(
                width: 20,
              ),
              Expanded(
                  child: Image.asset(
                nightShop.nsImage!,
                fit: BoxFit.cover,
              )),
            ],
          )
        ],
      ),
    );
  }
}
