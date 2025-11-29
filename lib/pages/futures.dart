import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Futures extends StatefulWidget {
  const Futures({super.key});

  @override
  State<Futures> createState() => _FuturesState();
}

class _FuturesState extends State<Futures> {
  @override
  void initState() {
    getStudentDetails();
    super.initState();
  }

  getStudentDetails() {
    const url = "https://jsonplaceholder.typicode.com/users";
    http
        .get(Uri.parse(url))
        .then((value) => print(value.body))
        .catchError((error) => print(error));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Futures Explained')));
  }
}
