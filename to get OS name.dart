import 'dart:io';

void main() {
  // Getting OS name
  String os = Platform.operatingSystem;

  // Getting platform (OS architecture)
  String platform = Platform.isWindows ? 'Windows' :
                    Platform.isLinux ? 'Linux' :
                    Platform.isMacOS ? 'macOS' :
                    Platform.isAndroid ? 'Android' :
                    Platform.isIOS ? 'iOS' :
                    'Unknown';

  // Getting OS version
  String osVersion = Platform.operatingSystemVersion;

  // Print the gathered information
  print('OS: $os');
  print('Platform: $platform');
  print('OS Version: $osVersion');
}
