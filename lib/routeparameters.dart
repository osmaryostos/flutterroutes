import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: HomePage(),
  ));
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Algo"),
      ),
      body: Center(
        child: ElevatedButton(
        onPressed: (){
          User user = new User(name: "Osmary", age: 40);
          Route route = MaterialPageRoute(builder: (context) => SecondHome(user: user));
          Navigator.push(context, route);

        },

        child: Text('Second Home1')
        ),
      )
    );

  }
}

class User{
  final String name;
  final int age;
  User({required this.name, required this.age});
}



class SecondHome extends StatelessWidget {
  final User user;
  SecondHome({required this.user});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('${this.user.name} - ${this.user.age}' ),
        ),
        body: Center(
            child: ElevatedButton(
              onPressed: () {
                // Navigator.pop(context);
                Navigator.pop(context);

              },
              child: Text('Go back to first'),
            )
        )
    );
  }
}




