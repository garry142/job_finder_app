import 'package:flutter/material.dart';
import 'package:job_finder_app/screens/main_screens.dart';
import 'package:job_finder_app/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'JobFinder',
      home:  SplashScreen(),
      
      theme: ThemeData(
        primaryColor: const Color(0xFF5F5FFF),
        hintColor: const Color(0XFF030047),
        highlightColor:  const Color(0xFF5F5FFF),
        textTheme:const TextTheme(
          headlineLarge: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Color(0XFF030047),
          ),
          
          headlineMedium: TextStyle(
            fontSize: 36.0,
            fontWeight: FontWeight.bold,
            color: Color(0xFF5F5FFF)
          ),
          headlineSmall: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w500
          ),
         bodyLarge: TextStyle(
          fontSize: 20,
          color: Color.fromARGB(255, 16, 16, 129),
         ),
          bodyMedium: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w600,
          color: Color(0x00ff5f5f),
         ),
         
         
        ),
      ),
    );
  }
}
