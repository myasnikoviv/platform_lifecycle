
import 'platform_lifecycle_platform_interface.dart';

class PlatformLifeCycle {
  Future<String?> getPlatformVersion() {
    return PlatformLifeCyclePlatform.instance.getPlatformVersion();
  }
}
