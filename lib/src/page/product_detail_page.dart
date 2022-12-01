import 'package:flutter/material.dart';

import '../../setting_method_channel.dart';

class ProductDetailPage extends StatelessWidget {
  final String argument;

  ProductDetailPage({Key? key, required this.argument}) : super(key: key);

  final SettingMethodChannel settingMethodChannel = SettingMethodChannel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Detail Page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text(argument),
          onPressed: () {
            settingMethodChannel.startNextPage();
          },
        ),
      ),
    );
  }
}
