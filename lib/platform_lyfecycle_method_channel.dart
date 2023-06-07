import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'platform_lyfecycle_platform_interface.dart';

/// An implementation of [PlatformLyfecyclePlatform] that uses method channels.
class MethodChannelPlatformLyfecycle extends PlatformLyfecyclePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('platform_lyfecycle');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
