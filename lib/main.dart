import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instaclone/responsive/mobile_screen_layout.dart';
import 'package:instaclone/responsive/responsive_layout_screen.dart';
import 'package:instaclone/responsive/web_screen_layout.dart';
import 'package:instaclone/screens/login_screen.dart';
import 'package:instaclone/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options:const  FirebaseOptions(
          apiKey: 'AIzaSyBIBjRlVegjebEQqs3yPEWWNCpQN4rLFes',
          appId: '1:510457404544:web:059a616b363c15ed0d1a65',
          messagingSenderId: '510457404544',
          projectId: 'instagramclone-d472e',
          storageBucket: 'instagramclone-d472e.appspot.com'
          ),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instagram Clone',
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: mobileBackgroundColor,
      ),
      // home: const ResponsiveLayout(
      //   webScreenLayout: WebScreenLayout(),
      //   mobileScreenLayout: MobileScreenLayout(),
      home: LoginScreen(),
      );
    
  }
}
