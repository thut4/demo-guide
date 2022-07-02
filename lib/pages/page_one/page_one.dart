import 'package:flutter/material.dart';
import 'package:flutter_project/pages/page_one/banner.dart';
// import 'package:flutter_project/models/data.dart';
//import 'package:flutter_project/pages/icon.dart';

import 'package:flutter_project/pages/page_one/section_title.dart';

import '../../provider/theme.dart';
import 'image_carousel.dart';

class PageOne extends StatelessWidget {
  const PageOne({
    Key? key,
  }) : super(key: key);
  //final Shop shop;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: ImageCarousel(),
          ),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: SectionTitle(
              title: "Promotion Area",
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: BannerPage(),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: RichText(
                text: TextSpan(
                    text:
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.Gravida in fermentum et sollicitudin ac orci.",
                    style: MyThemes.darkTextTheme.bodyText1!.copyWith(
                        fontSize: 16,
                        color: Colors.blueGrey,
                        letterSpacing: 1.0),
                    children: [
                  TextSpan(
                      text:
                          "\nAc tortor vitae purus faucibus ornare suspendisse sed. Arcu dui vivamus arcu felis bibendum ut tristique.Vulputate eu scelerisque felis imperdiet proin fermentum leo vel orci.",
                      style: MyThemes.darkTextTheme.bodyText1!.copyWith(
                          fontSize: 18,
                          color: Colors.blueAccent,
                          height: 1.2,
                          letterSpacing: 1.0))
                ])),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Image.asset("assets/deli1.png"),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: SectionTitle(title: "Contact Us"),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const <Widget>[
                Icon(
                  Icons.facebook,
                  size: 45.0,
                ),
                Icon(
                  Icons.telegram,
                  size: 45.0,
                ),
                Icon(
                  Icons.phone,
                  size: 45.0,
                ),
                Icon(
                  Icons.mail,
                  size: 45.0,
                ),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
