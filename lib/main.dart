import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'features/app/splash_screen/splash_screen.dart';
import 'features/user_auth/presentation/pages/login_page.dart';

Future main() async {

  WidgetsFlutterBinding.ensureInitialized();
  if(kIsWeb){
    await Firebase.initializeApp(options: const FirebaseOptions(apiKey: "AIzaSyDK3OkuTinZhA8RFDC-rslJcbRy1qx9KSs", appId: "1:944742015061:web:957068bce593de379b34dc", messagingSenderId: "944742015061", projectId: "motor-show-firebase"));
  }
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
        title: 'Flutter Firebase',
        home: SplashScreen(
          child: LoginPage(),
        )
    );
  }
}

