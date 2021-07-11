import 'package:flutter/material.dart';

// coverage:ignore-start
void main() {
  runApp(const MyApp());
}
// coverage:ignore-end

/// {@template my_app}
/// The entry point for the state of the applicaiton.
/// {@endtemplate}
class MyApp extends StatefulWidget {
  /// {@macro my_app}
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: Center(child: Text('Home Page'))),
    );
  }
}
