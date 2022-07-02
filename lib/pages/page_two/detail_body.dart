import 'package:flutter/material.dart';
import 'package:flutter_project/models/data.dart';
import 'package:flutter_project/provider/theme.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'item_withimage.dart';

class BodyPage extends StatelessWidget {
  const BodyPage({Key? key, required this.shop}) : super(key: key);
  final Shop shop;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                      top: size.height * 0.12, left: 20, right: 20),
                  //height: 500,
                  decoration: const BoxDecoration(
                      color: Colors.blueGrey,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(24),
                        topRight: Radius.circular(24),
                      )),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  shop.desc!,
                                  style: MyThemes.darkTextTheme.bodyText1!
                                      .copyWith(height: 1.5),
                                  overflow: TextOverflow.clip,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  "Available Foods\n${shop.type!}",
                                  style: MyThemes.darkTextTheme.headline3!
                                      .copyWith(
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                ItemWithImage(shop: shop),
              ],
            ),
          )
        ],
      ),
    );
  }
}
