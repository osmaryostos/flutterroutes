import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
       // primarycontSwatch: ,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            bottom: const TabBar(
                tabs: [
                  Tab(icon: Icon(Icons.android), text: 'Android',),
                  Tab(icon: Icon(Icons.phone_iphone), text: 'Iphone',),
                ],
            ),
            title: const Text('Tab Bar Demo'),
          ),
          body: const TabBarView(
              children: [
                Center(child: Text('Android Spec.'),),
                Center(child: Text('Iphone Spec.'),),
              ]),
        ));
  }
}
