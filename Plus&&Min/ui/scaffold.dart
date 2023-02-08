import 'package:example/ui/stateFul.dart';
import 'package:flutter/material.dart';

class Design extends State<Test> {
  String title = "Home";
  String body = "Hello";
  String plus = "+";
  String min = "-";
  int number = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      drawer: const Drawer(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "$number",
            style: const TextStyle(
                color: Colors.amber, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 100,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MaterialButton(
                onPressed: () {
                  setState(() {
                    number++;
                  });
                },
                child: Container(
                  width: 40,
                  padding: const EdgeInsets.only(left: 8),
                  decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Text(
                    plus,
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              ),
              MaterialButton(
                onPressed: () {
                  setState(() {
                    if (number > 0) {
                      number--;
                    }
                  });
                },
                child: Container(
                  width: 40,
                  padding: const EdgeInsets.only(left: 13),
                  decoration: const BoxDecoration(
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(20)),
                  ),
                  child: Text(
                    min,
                    style: const TextStyle(fontSize: 40),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
