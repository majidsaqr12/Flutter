import 'package:flutter/material.dart';
import 'Stateful.dart';

class Stateless extends State<Stateful> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(vertical: 30),
                child: const Text(
              "Forget password",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            )),
            const SizedBox(
              height: 50,
            ),
            const Text(
                "Please enter your email address. You will recieve a link to create a new password via email."),
            const SizedBox(
              height: 20,
            ),
            Container(
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: "Email",
                    hintText: "email",
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10))),
              ),
            ),
            const SizedBox(height: 30,),
            InkWell(
              child: Container(
                width: double.infinity,
                height: 40,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(child: Text("SEND" , style: TextStyle(color: Colors.white , fontSize: 17),),),
              ),
            )
          ],
        ),
      ),
    );
  }
}
