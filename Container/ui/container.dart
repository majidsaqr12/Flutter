import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          actions: [
            IconButton(
                onPressed: () => debugPrint("mm"),
                icon: const Icon(Icons.add_alert_sharp)),
          ],
        ),
        drawer: const Drawer(),
        body: Column(
          children: [
            Container(
              width: 300,
              height: 160,
              decoration: const BoxDecoration(
                  color: Colors.black12,
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/j1.jpg")),
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(30), right: Radius.circular(5))),
              margin: const EdgeInsets.all(22),
              padding: const EdgeInsets.all(20),
              child: const Text("Majid Saqr" , style: TextStyle(color: Colors.white),),
            ),
            Container(
              width: 300,
              height: 160,
              decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30), right: Radius.circular(5)),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://wallpaperaccess.com/full/3770579.jpg"),
                  fit: BoxFit.fill,
                ),
              ),
              margin: const EdgeInsets.all(22),
              padding: const EdgeInsets.all(20),
              child: const Text("Majid Saqr" , style: TextStyle(color: Colors.white)),
            ),
            Container(
              width: 300,
              height: 160,
              decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30), right: Radius.circular(5)),
                image: DecorationImage(
                  image: NetworkImage(
                      "https://cdn.wallpapersafari.com/17/59/QbIm2j.jpeg"),
                  fit: BoxFit.fill,
                ),
              ),
              margin: const EdgeInsets.all(22),
              padding: const EdgeInsets.all(20),
              child: const Text("Majid Saqr" , style: TextStyle(color: Colors.white)),
            ),
          ],
        ));
  }
}
