import 'package:flutter/material.dart';
import 'package:medi_sync/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MediSync',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LoginPage(    ),
    );
  }
}