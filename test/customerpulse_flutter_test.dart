import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:customerpulse_flutter/customerpulse_flutter.dart';
import 'package:customerpulse_flutter/customerpulse_flutter_platform_interface.dart';
import 'package:customerpulse_flutter/customerpulse_flutter_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockCustomerpulseFlutterPlatform
    with MockPlatformInterfaceMixin
    implements CustomerpulseFlutterPlatform {


  @override
  Future<bool> showSurveyBottomSheet(BuildContext context, {required String appId, required String linkOrToken, Map<String, String>? options}) {
    return Future.value(true);
  }

  @override
  Future<bool> showSurveyPage(BuildContext context, {required String appId, required String linkOrToken, Map<String, String>? options}) {
    return Future.value(true);
  }
}

void main() {
  final CustomerpulseFlutterPlatform initialPlatform = CustomerpulseFlutterPlatform.instance;

  test('$MethodChannelCustomerpulseFlutter is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelCustomerpulseFlutter>());
  });
}
