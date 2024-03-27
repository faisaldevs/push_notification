
import 'package:firebase_messaging/firebase_messaging.dart';

class NotificationServices{
  FirebaseMessaging messaging = FirebaseMessaging.instance;

  requestNotificationServices() async{
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: true,
      badge: true,
      carPlay: true,
      criticalAlert: true,
      sound: true,
      provisional: true,
    );

    final token = await messaging.getToken();
    print(token);

    if(settings.authorizationStatus == AuthorizationStatus.authorized){

      print("user granted permission");
      
    }else if(settings.authorizationStatus == AuthorizationStatus.provisional){
      print("user granted app permission");
    }else{
      print("user denied permission");
    }
  }
}