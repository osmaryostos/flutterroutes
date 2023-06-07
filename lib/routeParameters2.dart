

import 'package:flutter/material.dart';

void main() {
  runApp(
      MaterialApp(
    initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => HomePage(),
        '/secondPage': (context)  => SecondHome(),
      },
  ));
}


class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          title: Text("PAssing Parameters"),
        ),
        body: Center(
          child: ElevatedButton(
              onPressed: (){
                User user = new User(name: "Osmary", age: 90);
               // Route route = MaterialPageRoute(builder: (context) => SecondHome(user: user));
                //Navigator.push(context, route);
                Navigator.pushNamed(context, '/secondPage', arguments: user);

              },

              child: Text('Second Home2')
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
   User? user;
  //SecondHome({required this.user}); si uso pushnamed no necesito el constructor que me acepte el parametro\

  @override
  Widget build(BuildContext context) {

    RouteSettings? settings = ModalRoute.of(context)?.settings;
    user = settings?.arguments as User?;
    return Scaffold(
        appBar: AppBar(
          title: Text('${this.user?.name} - ${this.user?.age}' ),
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




