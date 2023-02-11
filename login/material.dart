import 'package:flutter/material.dart';

import 'Stateful.dart';

class MyApp extends StatelessWidget
{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Stateful(),
    );
  }
  
}