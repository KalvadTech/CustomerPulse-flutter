import 'package:flutter/material.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'customerpulse_flutter_method_channel.dart';

abstract class CustomerpulseFlutterPlatform extends PlatformInterface {
  /// Constructs a CustomerpulseFlutterPlatform.
  CustomerpulseFlutterPlatform() : super(token: _token);

  static final Object _token = Object();

  static CustomerpulseFlutterPlatform _instance = MethodChannelCustomerpulseFlutter();

  /// The default instance of [CustomerpulseFlutterPlatform] to use.
  ///
  /// Defaults to [MethodChannelCustomerpulseFlutter].
  static CustomerpulseFlutterPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [CustomerpulseFlutterPlatform] when
  /// they register themselves.
  static set instance(CustomerpulseFlutterPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }


  Future<bool> showSurveyPage(BuildContext context,
      {required String appId, required String linkOrToken, Map<String, String>? options}) {
    throw UnimplementedError('platformSurveyPage() has not been implemented.');
  }

  Future<bool> showSurveyBottomSheet(BuildContext context,
      {required String appId, required String linkOrToken, Map<String, String>? options}) {
    throw UnimplementedError('platformSurveyBottomSheet() has not been implemented.');
  }
}
