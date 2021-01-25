import 'package:flutter/material.dart';
import 'package:tarefas/app/ui/android/home/home_screen.dart';
import 'package:tarefas/app/ui/android/login/login_screen.dart';
import 'package:tarefas/app/ui/android/splash/splash_screen.dart';
import 'package:tarefas/app/routes/app_routes.dart';

void main() => runApp(SplashScreenPage());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tarefas',
      theme: ThemeData(
        primaryColor: Colors.deepOrangeAccent,
        scaffoldBackgroundColor: Colors.orange[900],
      ),
      routes: {
        AppRoutes.INITIAL: (ctx) => LoginScreen(),
        AppRoutes.HOME: (ctx) => HomeScreen(),
      },
    );
  }
}
