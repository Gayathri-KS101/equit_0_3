import 'package:equit_0_3/view/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Equit',
      theme: ThemeData(

      ),
      home: HomeScreen(),
    );
  }
}


