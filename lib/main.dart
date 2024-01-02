import 'package:flutter/material.dart';
import 'package:ythive/home.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter;
  await Hive.openBox('frindsbox');
  runApp(MyApp());
}

/// The MyApp class is a stateless widget in Dart.
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Home(),
    );
  }
}
