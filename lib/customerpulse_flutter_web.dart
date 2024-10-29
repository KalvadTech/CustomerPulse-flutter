// In order to *not* need this ignore, consider extracting the "web" version
// of your plugin as a separate package, instead of inlining it in the same
// package as the core of your plugin.
// ignore: avoid_web_libraries_in_flutter

import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'customerpulse_flutter_platform_interface.dart';

/// A web implementation of the CustomerpulseFlutterPlatform of the CustomerpulseFlutter plugin.
class CustomerpulseFlutterWeb extends CustomerpulseFlutterPlatform {
  /// Constructs a CustomerpulseFlutterWeb
  CustomerpulseFlutterWeb();

  static void registerWith(Registrar registrar) {
    CustomerpulseFlutterPlatform.instance = CustomerpulseFlutterWeb();
  }


}
