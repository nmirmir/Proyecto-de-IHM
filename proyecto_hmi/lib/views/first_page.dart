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
      child: Padding( 
        padding: const EdgeInsets.only(top: 10.0, left: 20.0), // Ajusta los márgenes según tus necesidades
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
      children:[Text(
        'LOGIN', // Replace with your desired text
        style: TextStyle( fontFamily: 'Roboto', fontSize: 56, 
        fontWeight: FontWeight.bold, color: Colors.white),
      ),
      SizedBox(height: 50), 
      Text(
        'Usuario:', // Replace with your desired text
        style: TextStyle( fontFamily: 'Roboto', fontSize:48 , 
        fontWeight: FontWeight.bold, color: Colors.white),
      ),
      SizedBox(height: 20), 
      TextField( decoration: InputDecoration( labelText: 'Usuario', border: OutlineInputBorder(),fillColor: Colors.white,filled:true ),),
      SizedBox(height: 30), 
      
      Text(
        'Contraseña:', // Replace with your desired text
        style: TextStyle( fontFamily: 'Roboto', fontSize:48 , 
        fontWeight: FontWeight.bold, color: Colors.white),
      ),
      SizedBox(height: 20), 
      TextField( decoration: InputDecoration( labelText: 'Contraseña', border: OutlineInputBorder(),fillColor: Colors.white,filled:true ),obscureText: true, ),
    SizedBox(height: 30),  
    ElevatedButton( onPressed: () {}, 
    child: Text('Aceptar'),
    ),
      ] 
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
