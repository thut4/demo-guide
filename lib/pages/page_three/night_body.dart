import 'package:flutter/material.dart';
import 'package:flutter_project/models/data.dart';
import 'package:flutter_project/pages/page_three/night_item_card.dart';
import 'package:flutter_project/pages/page_three/night_item_withimg.dart';
import 'package:flutter_project/provider/theme.dart';
//import 'package:google_fonts/google_fonts.dart';

//import 'item_withimage.dart';

class NightBodyPage extends StatelessWidget {
  const NightBodyPage({Key? key, required this.nightShop}) : super(key: key);
  final NightShop nightShop;
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
                      color: Color.fromARGB(255, 25, 85, 97),
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              children: [
                                Text(
                                  nightShop.nsDesc!,
                                  style: MyThemes.darkTextTheme.bodyText1!
                                      .copyWith(height: 1.5, fontSize: 18),
                                  overflow: TextOverflow.clip,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                //NightItemWithImage(nightShop: nightShop),
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                NightItemWithImage(nightShop: nightShop)
              ],
            ),
          )
        ],
      ),
    );
  }
}
