import 'package:flutter_test/flutter_test.dart';
import 'package:platform_lifecycle/platform_lifecycle.dart';
import 'package:platform_lifecycle/platform_lifecycle_platform_interface.dart';
import 'package:platform_lifecycle/platform_lifecycle_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPlatformLifeCyclePlatform
    with MockPlatformInterfaceMixin
    implements PlatformLifeCyclePlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PlatformLifeCyclePlatform initialPlatform = PlatformLifeCyclePlatform.instance;

  test('$MethodChannelPlatformLifeCycle is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPlatformLifeCycle>());
  });

  test('getPlatformVersion', () async {
    PlatformLifeCycle platformLyfecyclePlugin = PlatformLifeCycle();
    MockPlatformLifeCyclePlatform fakePlatform = MockPlatformLifeCyclePlatform();
    PlatformLifeCyclePlatform.instance = fakePlatform;

    expect(await platformLyfecyclePlugin.getPlatformVersion(), '42');
  });
}
