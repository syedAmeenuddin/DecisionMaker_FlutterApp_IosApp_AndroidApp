import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      title: "Make Decision",
      home: const Scaffold(
         backgroundColor: Color(0xFFd7d7d7),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: RawMaterialButton(
        highlightColor: Colors.transparent,
        child: Image.asset('images/ball$num.png',),
        onPressed: (){
          setState(() {
            num=Random().nextInt(8)+1;
          },);
        },
      ),
    );
  }
}
