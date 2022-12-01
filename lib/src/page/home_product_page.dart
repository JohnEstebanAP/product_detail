import 'package:flutter/material.dart';
import 'package:product_detail/src/page/product_detail_page.dart';

import '../../setting_method_channel.dart';

class HomeProductPage extends StatelessWidget {
  final SettingMethodChannel settingMethodChannel = SettingMethodChannel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
        leading: IconButton(
          onPressed: () {
            settingMethodChannel.didBackPressedAndroid();
          },
          icon: const Icon(Icons.arrow_back_outlined),
        ),
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text("ir a los detalles del producto."),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => ProductDetailPage(
                        argument: "Hola Mundo",
                      )),
            );
          },
        ),
      ),
    );
  }
}
