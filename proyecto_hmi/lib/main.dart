import 'package:flutter/material.dart';
import 'views/first_page.dart';

void main() {
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Practice 1',home: FirstPage(),);
  }
}

