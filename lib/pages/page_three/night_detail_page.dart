import 'package:flutter/material.dart';
import 'package:flutter_project/models/data.dart';
import 'package:flutter_project/pages/page_three/night_body.dart';

class NightDetailPage extends StatelessWidget {
  const NightDetailPage({Key? key, required this.nightShop}) : super(key: key);
  final NightShop nightShop;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: NightBodyPage(
        nightShop: nightShop,
      ),
    );
  }
}
