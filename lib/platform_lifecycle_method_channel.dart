import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'platform_lifecycle_platform_interface.dart';

/// An implementation of [PlatformLifeCyclePlatform] that uses method channels.
class MethodChannelPlatformLifeCycle extends PlatformLifeCyclePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('platform_lifecycle');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
