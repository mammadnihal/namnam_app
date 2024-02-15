import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //DEBUG KALDIRIR
      title: 'namnam',
      
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromRGBO(233, 30, 99, 1),
          leading: const Icon(Icons.receipt, color: Colors.white,),
          title:  Image.asset("/logo.png",height: 50,),
          centerTitle: true,
        ),
        body: const Center(
          child: Text(''),
        ),
      ),
    );
  }
}
