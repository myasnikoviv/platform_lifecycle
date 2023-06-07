import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:platform_lyfecycle/platform_lyfecycle_method_channel.dart';

void main() {
  MethodChannelPlatformLyfecycle platform = MethodChannelPlatformLyfecycle();
  const MethodChannel channel = MethodChannel('platform_lyfecycle');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
