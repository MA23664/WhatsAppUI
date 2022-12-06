import 'package:flutter/material.dart';
import 'package:whatsappui/home_sc.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: home_screen(),
      theme: ThemeData(
        primarySwatch: Colors.teal
      ),
    );
  }
}
