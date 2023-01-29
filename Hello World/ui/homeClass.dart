import 'package:flutter/material.dart';

class FirstApp extends StatelessWidget
{
  const FirstApp({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
        child: Text(
          "Hello World , Iam Majid Saqr\n\n\t\t\t\t   Flutter Developer",
          textDirection: TextDirection.ltr,
          style: TextStyle(color: Colors.amber , fontSize: 20),
        )
    );
  }

}