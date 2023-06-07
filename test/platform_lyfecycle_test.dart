import 'package:flutter_test/flutter_test.dart';
import 'package:platform_lyfecycle/platform_lyfecycle.dart';
import 'package:platform_lyfecycle/platform_lyfecycle_platform_interface.dart';
import 'package:platform_lyfecycle/platform_lyfecycle_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlatformLyfecyclePlatform
    with MockPlatformInterfaceMixin
    implements PlatformLyfecyclePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PlatformLyfecyclePlatform initialPlatform = PlatformLyfecyclePlatform.instance;

  test('$MethodChannelPlatformLyfecycle is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlatformLyfecycle>());
  });

  test('getPlatformVersion', () async {
    PlatformLyfecycle platformLyfecyclePlugin = PlatformLyfecycle();
    MockPlatformLyfecyclePlatform fakePlatform = MockPlatformLyfecyclePlatform();
    PlatformLyfecyclePlatform.instance = fakePlatform;

    expect(await platformLyfecyclePlugin.getPlatformVersion(), '42');
  });
}
