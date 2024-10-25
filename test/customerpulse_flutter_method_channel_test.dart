import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:customerpulse_flutter/customerpulse_flutter_method_channel.dart';

void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelCustomerpulseFlutter platform = MethodChannelCustomerpulseFlutter();
  const MethodChannel channel = MethodChannel('customerpulse_flutter');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

}
