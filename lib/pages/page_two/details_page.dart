
import 'package:flutter/material.dart';
import 'package:flutter_project/models/data.dart';
import 'package:flutter_project/pages/page_two/detail_body.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.shop}) : super(key: key);
  final Shop shop;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).appBarTheme.backgroundColor,
      ),
      body: BodyPage(
        shop: shop,
      ),
    );
  }
}
