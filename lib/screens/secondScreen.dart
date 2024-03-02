import 'package:flutter/material.dart';

class SecondScreen extends StatelessWidget {
  String name;
  String userName;
  String email;
  SecondScreen({super.key, required this.name, required this.userName, required this.email});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Screen"),
        backgroundColor: Colors.blue,
      ),
      body: Scaffold(
        body: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Name: $name", style: const TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("UserName: $userName", style: const TextStyle(fontSize: 20),),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text("Email: $email", style: const TextStyle(fontSize: 20),),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: const Text("Go back")),
            ],
          )
        ),
      ),
    );
  }
}
