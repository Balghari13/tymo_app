import 'package:flutter/material.dart';
import 'package:tymo_app/Screens/Auth/login.dart';
import 'package:tymo_app/Screens/Auth/registration.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tyamo',
      debugShowCheckedModeBanner: false,
      home: RegistrationScreen(),
      // LogInScreen(),
    );
  }
}

