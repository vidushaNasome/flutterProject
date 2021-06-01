import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),

  ));
}

class Home extends StatelessWidget {
  //const test({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My First App'),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
          child: /*Text(
            'hello ninjas',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
            ),*/
            Image(
              image: AssetImage('assests/pic2.jpg'),
              //image: NetworkImage('https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569__340.jpg'),
          ),

      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: Text('click'),
        backgroundColor: Colors.black12,
      ),
    );

  }
}


