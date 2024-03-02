import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:udemy_app/screens/secondScreen.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: true,
        theme: ThemeData(primarySwatch: Colors.blue),
        home: Scaffold(
            appBar: AppBar(
              title: const Text("Udemy App"),
              backgroundColor: Colors.blue,
            ),
            body: Center(
              child: ElevatedButton(
                onPressed: () async {
                  var url =
                      Uri.parse('https://jsonplaceholder.typicode.com/users/');
                  var response = await http.get(url);
                  print("Response status: ${response.statusCode}");
                  print("Response body: ${response.body}");
                  var data = jsonDecode(response.body);
                  print(data[2]["name"]);

                  String name = data[2]["name"];
                  String userName = data[2]["username"];
                  String email = data[2]["email"];

                  // ignore: use_build_context_synchronously
                  Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => SecondScreen(
                            name: name,
                            userName: userName,
                            email: email,
                          )));
                },
                child: const Text("Go to next Screen"),
              ),
            )));
  }
}
