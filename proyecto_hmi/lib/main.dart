import 'package:flutter/material.dart';
import 'views/first_page.dart';

void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Practice 1',home: FirstPage(),);
  }
  
}

