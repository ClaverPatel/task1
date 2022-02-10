import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List _Users = [];

  _getUserData() async {
    const Url = 'https://jsonplaceholder.typicode.com/users';

    final response = await http.get(Uri.parse(Url));
    final data = json.decode(response.body);

    setState(() {
      _Users = data;
    });
  }

  @override
  // ignore: dead_code
  Widget build(BuildContext context) {
    const String bar = "Small App";

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Row(
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 120),
                child: Text(
                  bar,
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: FutureBuilder(
          future: _getUserData(),
          builder: (BuildContext ctx, index) {
            if (index.hasData) {
              return const Text("loading");
            } else {
              return ListView.builder(
                itemCount: _Users.length,
                itemBuilder: (BuildContext ctx, index) {
                  return Card(
                    elevation: 7,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            _Users[index]['name'],
                            style: const TextStyle(fontSize: 20),
                          ),
                          Text(_Users[index]['email']),
                          Text(_Users[index]['phone'])
                        ],
                      ),
                    ),
                  );
                },
              );
            }
          },
        ),
      ),
      //
    );
  }
}
