import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Tooltip',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tooltip Widget"),
        actions: [
          Tooltip(
            message: 'My Account',
            child: TextButton(
              onPressed: (() => print("hello")),
              child: Icon(
                Icons.account_box,
                size: 40,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 16.0),
            Tooltip(
              message: 'Picture of Bird',
              child: Container(
                width: 400,
                height: 400,
                child: Image.asset("lib/assets/Bird.jpg"),
              ),
            ),
            SizedBox(height: 16.0),
            Tooltip(
              message: "Text",
              child: Text(
                "Flutter is an Opensource Development kit created by Google ",
                style: TextStyle(fontSize: 20.0),
              ),
            )
          ],
        ),
      ),
    );
  }
}
