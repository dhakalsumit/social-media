import 'package:flutter/material.dart';
import 'package:social_media/theme/pallete.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Social Media',
      theme: Pallete.darkModeAppTheme,
      home:const SizedBox()
    );
  } 
}

