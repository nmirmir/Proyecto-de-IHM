import 'package:flutter/material.dart';
import 'dart:developer' as dev;
import 'package:proyecto_hmi/views/second_page.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  void _onDoubleTap() {
    dev.log('OnDoubleTap');
  }
  void _goToSecondPage(BuildContext context) {
    var route = MaterialPageRoute(
      builder: (context) => const SecondPage(),
    );
    Navigator.of(context).push(route);
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
    body: Stack(
            children: [
              Image.asset(
            '../../assets/img/logo.png',
            width: 120,
            height: 120,
            alignment: Alignment.topCenter,
          ),
          Center(
  child: Container(
    width: 700,
    height: 600,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10),
      border: Border.all(color: Colors.black),
    ),
    alignment: Alignment.center, // Align the content within the container
    margin: const EdgeInsets.symmetric(horizontal: 20),
    child: Align(
      alignment: Alignment.topLeft, // Place text at the top-left corner
      child: Text(
        'LOGIN', // Replace with your desired text
        style: TextStyle(
          fontSize: 48, // Adjust font size
          color: Colors.black, // Adjust text color
          fontWeight: FontWeight.bold, // Optional: make text bold
          
        ),
      ),
    ),
  ),
),

            
            
          ],
          ),
    );
  }
  
}
