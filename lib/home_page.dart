import 'package:flutter/material.dart';
import 'package:webview_test/notification_service.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  NotificationServices notificationServices = NotificationServices();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    notificationServices.requestNotificationServices();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
