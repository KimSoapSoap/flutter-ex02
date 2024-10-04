import 'package:flutter/material.dart';
import 'package:flutterex02carrot/screens/main_screens.dart';
import 'package:flutterex02carrot/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'carrot_market_ui',
      home: MainScreens(),
      theme: theme(),
    );
  }
}
