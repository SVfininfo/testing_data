// import 'dart:io';
//
// import 'package:integration_test/integration_test_driver.dart';
//
// // void main() => integrationDriver();
//
// Future<void> main() async {
//   await Process.run(
//     'adb',
//     [
//       'shell',
//       'pm',
//       'grant',
//       'com.grafterr.grafterr_go', // TODO: Update this
//       'android.permission.ACCESS_COARSE_LOCATION'
//     ],
//   );
//   // TODO: Add more permissions as required
//   await integrationDriver();
// }