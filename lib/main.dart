import 'package:ecommerce_app_ui/product/shop_page.dart';
import 'package:ecommerce_app_ui/utils/theme_manager.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  // One Signal Configutation
  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);
  OneSignal.shared.setAppId("a3f66b76-add4-4eb8-85b9-f3ecaa93142e");
  OneSignal.shared.promptUserForPushNotificationPermission().then((accepted) {
    print("One Signal Accepted permission: $accepted");
  });

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
  runApp(const EcommerceApp());
}

@pragma('vm-entry-point')
Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  await Firebase.initializeApp();
  print("From Mail Function: ${message.notification!.title.toString()}");
  print("From Mail Function: ${message.notification!.body.toString()}");
  print("From Mail Function: ${message.data.toString()}");
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // theme: Theme.of(context).copyWith(
      //   colorScheme: Theme.of(context).colorScheme.copyWith(
      //         primary: const Color(0xfff63f51),
      //       ),
      // ),

      theme: ThemeManager().applicationTheme(),
      debugShowCheckedModeBanner: false,
      home: const Shoppage(),
    );
  }
}
