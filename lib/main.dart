import 'package:flutter/material.dart';
import 'pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Menu',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

