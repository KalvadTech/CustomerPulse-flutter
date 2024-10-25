import 'package:flutter/material.dart';
import 'customerpulse_flutter_platform_interface.dart';

class CustomerPulseFlutter {

  Future<bool> showSurveyPage(BuildContext context,
      {required String appId, required String linkOrToken, Map<String, String>? options}) {
    return CustomerpulseFlutterPlatform.instance.showSurveyPage(
      context,
      appId: appId,
      linkOrToken: linkOrToken,
      options: options,
    );
  }

  Future<bool> showSurveyBottomSheet(BuildContext context,
      {required String appId, required String linkOrToken, Map<String, String>? options}) {
    return CustomerpulseFlutterPlatform.instance.showSurveyBottomSheet(
      context,
      appId: appId,
      linkOrToken: linkOrToken,
      options: options,
    );
  }
}
