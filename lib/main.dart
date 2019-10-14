import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Practice',
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/second': (context) => SecondPage(),
      },
    ));

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Card(
        child: Center(
          child: Container(
            transform: Matrix4.rotationZ(0.5),
            height: 400,
            width: 300,
            color: Colors.amber,
            child: Center(
              child: Text(
                'Hello World!',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Next Page'),
        onPressed: () {
          Navigator.pushNamed(context, '/second');
        },
        icon: Icon(Icons.thumb_up),
        backgroundColor: Colors.pink,
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Second Screen'),
        backgroundColor: Colors.lightBlue,
      ),
      body: Card(
        child: Center(
          child: Container(
            transform: Matrix4.rotationZ(-0.5),
            height: 400,
            width: 300,
            color: Colors.amber,
            child: Center(
              child: Text(
                'Goodbye World',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: Text('Back Home'),
        onPressed: () {
          Navigator.pushNamed(context, '/');
        },
        icon: Icon(Icons.thumb_down),
        backgroundColor: Colors.pink,
      ),
    );
  }
}
