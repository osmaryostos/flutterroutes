import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => SecondHome());
            Navigator.push(context, route);
          },
          child: Text('Second Home'),
        ),
      ),
    );
  }
}

class SecondHome extends StatelessWidget {
  const SecondHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Home"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back to first'),
        )
      )
    );
  }
}

