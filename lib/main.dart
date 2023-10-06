import 'package:flutter/material.dart';
import 'package:untitled/screens/home.dart';
import 'package:untitled/screens/login.dart';
import 'package:untitled/screens/support.dart';

import 'screens/sos.dart';
import 'screens/vol.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: "/login",
        routes: {
          '/home': (context) => Home(),
          '/login': (context) => loginPage(),
          '/sos': (context) => Sos(),
          '/support': (context) => Support(),
          '/vol': (context) => Vol(),
        },
    );
  }
}