import 'package:flutter/material.dart';
import 'package:hello_world_app/presentation/screens/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
         colorSchemeSeed: Colors.greenAccent,
         useMaterial3: true,
         brightness: Brightness.dark
      ),
      home: const CounterScreen(/*title: 'Hello World Home Page'*/),
    );
  }
}
