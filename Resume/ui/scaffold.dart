import 'package:flutter/material.dart';

class scaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Home"),
        ),
        drawer: const Drawer(),
        body: Column(children: [
          Container(
              width: 300,
              height: 160,
              decoration: const BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(30), right: Radius.circular(5))),
              margin: const EdgeInsets.all(22),
              //padding: const EdgeInsets.all(5),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    height: 130,
                    margin: const EdgeInsets.only(
                      left: 15,
                      top: 1,
                    ),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage("images/me.JPEG")),
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.only(
                        left: 30,
                        top: 2,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: const [
                          Text(
                            "Majid Saqr",
                            style: TextStyle(
                                fontSize: 30,
                                shadows: [
                                  Shadow(
                                      color: Colors.greenAccent, blurRadius: 5)
                                ]),
                          ),
                          Text(
                            "Android Developer",
                            style: TextStyle(fontSize: 15, shadows: [
                              Shadow(color: Colors.greenAccent, blurRadius: 5)
                            ]),
                          ),
                        ],
                      ))
                ],
              )),
          Container(
            width: 300,
            height: 160,
            decoration: const BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(30), right: Radius.circular(5))),
            margin: const EdgeInsets.all(22),
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                Text("Facbook"),
                Text("Github")
              ],
            )
          ),
        ]));
  }
}
