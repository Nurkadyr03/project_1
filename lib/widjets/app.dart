import 'package:flutter/material.dart';
import 'package:project_1/widjets/user_profile.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:UserProfile(),
    );
  }
}