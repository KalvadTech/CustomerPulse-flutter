import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'customer_pulse_page.dart';
import 'customer_pulse_web_view.dart';
import 'customerpulse_flutter_platform_interface.dart';

/// An implementation of [CustomerpulseFlutterPlatform] that uses method channels.
class MethodChannelCustomerpulseFlutter extends CustomerpulseFlutterPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('customerpulse_flutter');
  static const _baseUrl = 'https://survey.customerpulse.gov.ae/';


  @override
  Future<bool> showSurveyPage(
    BuildContext context, {
    required String appId,
    required String linkOrToken,
    Map<String, String>? options,
  }) async {
    String url = "$_baseUrl$linkOrToken/${getParams(options)}";

    await Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => CustomerPulsePage(url: url),
      ),
    );
    return true;
  }

  @override
  Future<bool> showSurveyBottomSheet(
    BuildContext context, {
    required String appId,
    required String linkOrToken,
    Map<String, String>? options,
  }) async {
    String url = "$_baseUrl$linkOrToken/${getParams(options)}";
    showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) {
        return CustomerPulseWebView(url: url);
      },
    );
    return true;
  }

  String getParams(Map<String, String>? params) {
    if (params == null) return '';

    StringBuffer paramStr = StringBuffer('?');

    params.forEach((key, value) {
      if (paramStr.length > 1) paramStr.write('&');
      paramStr.write('$key=$value');
    });

    return paramStr.toString();
  }
}
