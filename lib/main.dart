import 'package:book_rent/signin.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainMaterial());
}
class MainMaterial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyApp(),
    );
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
        children: <Widget>[
          SizedBox(
            height: 100,
            child: DrawerHeader(
              child: Row(
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8.0),
                    child: Image.network(
                      'https://pbs.twimg.com/media/C27dQJbWQAIgjaR.jpg',
                    ),
                  ),
                  SizedBox(width: 20),
                  Text(
                    'Hey, Sohail',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              decoration: BoxDecoration(color: Colors.blue),
            ),
          ),
          Align(
              alignment: Alignment.topLeft,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (com) {
                      return Signin();
                    }),
                  );
                },
                child: Text("Sign In"),
              ))
        ],
      )),
      appBar: AppBar(
        title: Center(
          child: Text("Book Rent"),
        ),
      ),
    );
  }
}
