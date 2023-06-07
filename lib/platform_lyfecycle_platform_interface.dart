import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'platform_lyfecycle_method_channel.dart';

abstract class PlatformLyfecyclePlatform extends PlatformInterface {
  /// Constructs a PlatformLyfecyclePlatform.
  PlatformLyfecyclePlatform() : super(token: _token);

  static final Object _token = Object();

  static PlatformLyfecyclePlatform _instance = MethodChannelPlatformLyfecycle();

  /// The default instance of [PlatformLyfecyclePlatform] to use.
  ///
  /// Defaults to [MethodChannelPlatformLyfecycle].
  static PlatformLyfecyclePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PlatformLyfecyclePlatform] when
  /// they register themselves.
  static set instance(PlatformLyfecyclePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
