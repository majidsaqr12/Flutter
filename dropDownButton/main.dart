import 'package:flutter/material.dart';

void main() {
  runApp(const Material());
}

class Material extends StatelessWidget {
  const Material({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const MaterialApp(
      home: Stateful(),
    );
  }
}

class Stateful extends StatefulWidget {
  const Stateful({super.key});

  @override
  State<StatefulWidget> createState() {
    return DropDown();
  }
}

class DropDown extends State<Stateful> {
  var selectedCountry;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(),
      drawer: const Drawer(),
      body: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 50),
          alignment: Alignment.center,
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.redAccent),
          child: DropdownButtonHideUnderline(
            child: DropdownButton(
              
              hint: const Text("Choose Country"),
              items: ["USA", "UAE", "EG", "Other"]
                  .map((e) => DropdownMenuItem(
                        value: e,
                        child: Text("Country $e"),
                      ))
                  .toList(),
              onChanged: (val) {
                setState(() {
                  selectedCountry = val!;
                });
              },
              value: selectedCountry,
            ),
          ),
        ),
      ),
    );
  }
}
