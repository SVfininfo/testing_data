import 'dart:developer';
import 'dart:io';

import 'package:epos_go/export.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:epos_go/main.dart' as app;
void main(){
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', (){
      testWidgets('device permissions',(tester) async{
        app.main();
        // sleep(const Duration(seconds: 10));
        await tester.pumpAndSettle(Duration(seconds: 6));
        // await Future.delayed(const Duration(seconds: 30));
        // debugPrint("line executed");
        final enableLocation = find.byKey(Key("enableLocationSwitch"));
        // final enableLocation = find.byType(FlutterSwitch).first;
        await tester.tap(enableLocation);
        await Future.delayed(const Duration(seconds: 2));
        await tester.pumpAndSettle();
        final click1 = find.text('While using the app');
        expect(find.text("While using the app"), findsOneWidget);
        final clickB = expect(find.text('While using the app'), findsOneWidget);
        await Future.delayed(const Duration(seconds: 2));
        await tester.pumpAndSettle();
        await tester.tap(clickB);
        await Future.delayed(const Duration(seconds: 2));
        await tester.pumpAndSettle();

        final enableBluetooth = find.byKey(Key("enableBluetoothSwitch"));
        await Future.delayed(const Duration(seconds: 2));
        await tester.tap(enableBluetooth);
        await Future.delayed(const Duration(seconds: 2));
        await tester.pumpAndSettle();

        final enableFiles = find.byKey(Key("enableFilesSwitch"));
        await tester.tap(enableFiles);
        await tester.pumpAndSettle();
        final clickAllow =  find.text('Allow');
        await tester.pumpAndSettle();
        await tester.tap(clickAllow);
        await tester.pumpAndSettle();

        final enablePushNotifications = find.byKey(Key("enablePushNotificationSwitch"));
        await tester.tap(enablePushNotifications);
        await tester.pumpAndSettle();

        final launchButton = find.text('Launch');
        await tester.tap(launchButton);

        // final expect(find.text('0'), findsOneWidget);
        // await tester.tap();

        // Trigger a frame.
        await tester.pumpAndSettle();

      }
      );}
      );
}