import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myfood/auth/login_or_register.dart';
import 'package:myfood/firebase_options.dart';
import 'package:myfood/pages/home_page.dart';
import 'package:myfood/pages/login_page.dart';
import 'package:myfood/pages/register_page.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, 
      home: const LoginOrRegister(),
      routes: {
        '/home_page': (context) => const HomePage(),
        '/login_page': (context) => LoginPage(),
        '/register_page': (context) => RegisterPage(),
      },
    );
  }
}