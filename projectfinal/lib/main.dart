import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';
import 'package:projectfinal/firebase_options.dart';
import 'package:projectfinal/pages/NotificationPage_work/Firebase_api.dart';
import 'package:projectfinal/pages/home_screen.dart';
import 'package:projectfinal/pages/homepage%20work/home_page.dart';

final navigatorKey=GlobalKey<NavigatorState>();
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Initialize Flutter framework
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await FirebaseApi().initNotification();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
        debugShowCheckedModeBanner: false, 
        home: const HomeScreen(),
        navigatorKey: navigatorKey,
          routes:{
          'Notification_screen':(context) => const HomePage(),
          },
        );
        
        }
  }

