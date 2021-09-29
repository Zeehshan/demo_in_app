import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'configs/bindings/bindings.dart';
import 'ui/screens/screens.dart';
import 'package:in_app_purchase_android/in_app_purchase_android.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (GetPlatform.isAndroid) {
    InAppPurchaseAndroidPlatformAddition.enablePendingPurchases();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'in app purchase Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HomePage(),
      initialBinding: InitialBinding(),
    );
  }
}
