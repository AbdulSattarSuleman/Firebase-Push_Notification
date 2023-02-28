import 'package:ecommerce_app_ui/services/notification-services.dart';
import 'package:flutter/material.dart';

class Shoppage extends StatefulWidget {
  const Shoppage({super.key});

  @override
  State<Shoppage> createState() => _ShoppageState();
}

class _ShoppageState extends State<Shoppage> {
  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Method Call for Request Permission
    notificationServices.requestNotificationPermission();

    // Call Method FirebaseInit
    notificationServices.firebaseInit(context);
    // Call Method for Refresh Token
    notificationServices.isTokenRefresh();
    // Call Method for get Device Token
    notificationServices.getDeviceToken().then((value) {
      print("Device Token");
      print(value);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ShopPage')),
      body: ListView(),
    );
  }
}
