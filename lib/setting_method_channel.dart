import 'package:flutter/services.dart';

class SettingMethodChannel {
  static const platform = MethodChannel("com.example.flutter_module");

  Future<String> getProductPageInfo() async {
    try {
      return await (platform
          .invokeMethod('getProductPageInfo')
          .then((value) => value));
    } on PlatformException catch (exception) {
      print("Error en llamada al método getProductPageInfo");
      return "$exception";
    }
  }

  Future<void> didBackPressedAndroid() async {
    try {
      await (platform.invokeMethod('back'));
    } on PlatformException catch (exception) {
      print(exception);
    }
  }

  Future<void> startNextPage() async {
    try {
      await (platform.invokeMethod('next'));
    } on PlatformException catch (exception) {
      print(exception);
    }
  }
}
