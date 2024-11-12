import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});
  @override
  Widget build(BuildContext context){
    return Scaffold(
    appBar: AppBar(
      title: const Text('First Practice')),
    body:Container(
      color: Colors.blue,
      child: const Text('Hello World'),),
    floatingActionButton: const FloatingActionButton(
      onPressed: null,
      child:  Icon(Icons.icecream_outlined),
      ),
    );
  }
}