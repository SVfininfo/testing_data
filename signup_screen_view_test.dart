// import 'package:flutter/material.dart';
// import 'package:epos_go/export.dart';
// import 'package:epos_go/utils/customButton.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:integration_test/integration_test.dart';
//
//
//
// import 'package:epos_go/main.dart' as app;
//
// void main(){
//   IntegrationTestWidgetsFlutterBinding.ensureInitialized();
//
//   group('epos-go integration testing', () {
//     testWidgets('full app test', (tester) async{
//       app.main();
//       await tester.pumpAndSettle();
//
//       final fullName = find.byKey(Key("fullName"));
//       final businessName = find.byKey(Key("businessName"));
//       final email = find.byKey(Key("email"));
//       final mobileNumber = find.byKey(Key("mobileNumber"));
//       final password = find.byKey(Key("password"));
//       final confirmPassword = find.byKey(Key("confirmPassword"));
//       final  emailCheck= find.byKey(Key("emailCheck"));
//       final  tandcCheck= find.byKey(Key("t&c check"));
//       final  signUp= find.byType(CustomButton);
//       await tester.pumpAndSettle();
//
//       await tester.enterText(fullName, "Vamshi SS");
//       await tester.enterText(businessName, "Pizza");
//       await tester.enterText(email, "vamshi1@fininfocom.com");
//       await tester.enterText(mobileNumber, "9398065871");
//       await tester.enterText(password, "Vamshi@123");
//       await tester.enterText(confirmPassword, "Vamshi@123");
//       await tester.pumpAndSettle();
//
//       await tester.tap(emailCheck);
//       await tester.tap(tandcCheck);
//       await tester.pumpAndSettle();
//
//       await tester.tap(signUp);
//       await tester.pumpAndSettle();
//
//     });
//   });
//
// }
