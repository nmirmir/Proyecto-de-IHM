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
    appBar: AppBar(
      title: const Text('First Practice')),
    floatingActionButton: const FloatingActionButton(
      onPressed: null,
      child:  Icon(Icons.icecream_outlined),
    ),
    body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
            '../../assets/img/image.png',
            width: 80,
            height: 80,
            alignment: Alignment.topCenter,
          ),
            GestureDetector(
              child: Container(width: 20, height: 40, color: Colors.red),
              onTap: () {
                dev.log('OnTap');
                print("seee");
              },
            ),
            const Spacer(flex: 2),
            GestureDetector(
              onDoubleTap: () {
                _goToSecondPage(context);
              },
              child: Container(width: 40, height: 40, color: Colors.blue),
            ),
            const Spacer(flex: 1),
            GestureDetector(
              child: Container(width: 60, height: 40, color: Colors.yellow),
              onLongPress: () {
                dev.log('OnLongPress');
              },
            ),
          ],
          ),
    
    );
  }
  
}
