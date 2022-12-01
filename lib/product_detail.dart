library product_detail;

import 'package:flutter/material.dart';
import 'package:product_detail/setting_method_channel.dart';
import 'package:product_detail/src/page/home_product_page.dart';

class ProductDetail extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeProductPage(),
    );
  }
}
