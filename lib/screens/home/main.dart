import 'package:flutter/material.dart';

class Main extends StatelessWidget {
  //const ({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black45,
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
                    style: TextStyle(color: Colors.black.withOpacity(0.6)),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 150.0),
          Container(
            padding: EdgeInsets.all(100),
            /*decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage('https://p.kindpng.com/picc/s/766-7660799_toyota-industries-corporation-logo-hd-png-download.png'),
                  fit: BoxFit.cover),
            ),*/

    )
        ],
      ),
    );
  }
}
