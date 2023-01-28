import 'package:flutter/material.dart';

void main()
{
  runApp(
    const Material(
      color: Colors.deepPurpleAccent,
        child: Center(
          child: Text(
            "Hello World , Iam Majid Saqr" ,
            textDirection: TextDirection.ltr,
            style: TextStyle(color: Colors.amber , fontSize: 20),
          ),
        )
    )
  );
}