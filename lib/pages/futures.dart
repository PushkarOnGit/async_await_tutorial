import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Futures extends StatefulWidget {
  const Futures({super.key});

  @override
  State<Futures> createState() => _FuturesState();
}

class _FuturesState extends State<Futures> {
  /* 
  Can't make the init statement Async and Await as it will change the core type of it from 
  Void to Future<datatype> void
  */
  @override
  void initState() {
    getStudentDetails();
    super.initState();
  }

  Future<String> getStudentDetails() async {
    const url = "https://jsonplaceholder.typicode.com/users";
    // http
    //     .get(Uri.parse(url))
    //     .then((value) => print(value.body))
    //     .catchError((error) => print(error));

    /*
      This method is a bit ineffieicent 
      Causes a lot of nesting in function of then 
      making the code redablity and understand difficult
    */

    /*
    Used the async await to do the same thing but with improved redablity and less to no nesting 
    */

    /*
    Then used Future<datatype> fucntion name to return the value from the function with async and await
    */

    late http.Response res;

    try {
      res = await http.get(Uri.parse(url));
      print(res.body);
    } catch (error) {
      print(error.toString());
    }

    return res.body;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Center(child: Text('Futures Explained')));
  }
}
