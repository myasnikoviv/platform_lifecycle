import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'platform_lifecycle_method_channel.dart';

abstract class PlatformLifeCyclePlatform extends PlatformInterface {
  /// Constructs a PlatformLifeCyclePlatform.
  PlatformLifeCyclePlatform() : super(token: _token);

  static final Object _token = Object();

  static PlatformLifeCyclePlatform _instance = MethodChannelPlatformLifeCycle();

  /// The default instance of [PlatformLifeCyclePlatform] to use.
  ///
  /// Defaults to [MethodChannelPlatformLifeCycle].
  static PlatformLifeCyclePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PlatformLifeCyclePlatform] when
  /// they register themselves.
  static set instance(PlatformLifeCyclePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
