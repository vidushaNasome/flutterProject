import 'package:flutter/material.dart';

import 'feedback_new.dart';
import 'home.dart';

class Main extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 200,
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://p.kindpng.com/picc/s/766-7660799_toyota-industries-corporation-logo-hd-png-download.png'),
                  fit: BoxFit.cover),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.grey.withOpacity(0.3),
                height: 50,
                width: MediaQuery.of(context).size.width,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "All Moedern. All Electric.",
                    style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 20.0,
                      fontFamily: 'RaleWay',
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 50.0),
          Container(
            padding: EdgeInsets.all(60),
            /*child: Text(
              " A Look at the Lineup"+"\n\n"+"As your family grows,"
                  " so do your adventures. \n Everyone and everything "
                  "can come along for the ride with a spacious.",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20.0,
              ),
            ),*/
            decoration: BoxDecoration(
              image: DecorationImage(
                image: NetworkImage('https://www.autocar.co.uk/sites/autocar.co.uk/files/images/car-reviews/first-drives/legacy/centenario3.jpg'),
                fit: BoxFit.cover,

              ),
            ),

          ),
          SizedBox(height: 10.0),
          ButtonTheme(
            minWidth: 450.0,
            height: 50.0,
            child:
            RaisedButton(
              onPressed: () => {},
              child: Text(
                  'OUR DETAILS'
              ),
              color: Colors.black,
              textColor: Colors.white70,
              padding: EdgeInsets.all(20),
              splashColor: Colors.grey,
              hoverColor: Colors.indigo,
            ),
          ),
          SizedBox(height: 10.0),
          ButtonTheme(
            minWidth: 450.0,
            height: 50.0,
            child:
            RaisedButton(
              onPressed: () => {},
              child: Text(
                  'BUILD AND PRICE'
              ),
              color: Colors.black,
              textColor: Colors.white70,
              padding: EdgeInsets.all(20),
              splashColor: Colors.grey,
              hoverColor: Colors.indigo,
            ),
          ),
          SizedBox(height: 15.0),
          ButtonTheme(
            minWidth: 450.0,
            height: 50.0,
            child:
            RaisedButton(
              onPressed: () async
              {

              },
              child: Text(
                  'FIND A DEALER'
              ),
              color: Colors.black,
              textColor: Colors.white70,
              padding: EdgeInsets.all(20),
              splashColor: Colors.grey,
            ),
          ),
          SizedBox(height: 15.0),
          ButtonTheme(
            minWidth: 450.0,
            height: 50.0,
            child:
            RaisedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FeedbackNew()),
                );
              },
              child: Text('SHOPPING TOOLS'),
              color: Colors.black,
              textColor: Colors.white70,
              padding: EdgeInsets.all(20),
              splashColor: Colors.grey,

            ),
          ),
          SizedBox(height: 20.0),

        ],
      ),
    );
  }
}
