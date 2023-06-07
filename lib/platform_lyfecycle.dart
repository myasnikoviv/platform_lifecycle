
import 'platform_lyfecycle_platform_interface.dart';

class PlatformLyfecycle {
  Future<String?> getPlatformVersion() {
    return PlatformLyfecyclePlatform.instance.getPlatformVersion();
  }
}
