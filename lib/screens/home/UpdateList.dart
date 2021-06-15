import 'package:flutter/material.dart';
class UpdateList extends StatefulWidget{
  @override
  State<StatefulWidget> createState() =>_UpdateListState() ;

  }
  class _UpdateListState extends State<UpdateList>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFB8C00),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 15.0,left: 10.0),
            child: Row(
              children: <Widget>[
                IconButton(
                  onPressed: (){}, 
                  icon: Icon(Icons.arrow_back)
                  )
              ],
            ),
            ),
          SizedBox(height: 25.0),
          Padding(
            padding: EdgeInsets.only(left: 40.0),
            child: Row(
              children: <Widget>[
                Text('Services and',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0)),
                SizedBox(width: 10.0),
                Text('Offers',
                    style: TextStyle(
                        fontFamily: 'Montserrat',
                        color: Colors.white,
                        fontSize: 25.0))
              ],
            ),
          ),
                    SizedBox(height: 40.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          _bildName('Toyota Care', 'Roadside Assistent', 'Find out more'),
                           _bildName('Military Revbate', 'New Offer', 'Find out more'),
                            _bildName('Colege Grad Rebate', 'For Undergraduates', 'Find out more'),
                             _bildName('Options', 'Flexible financing', 'Find out more'),
                        ]))),
                    Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(Icons.search, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 60.0,
                      decoration: BoxDecoration(
                        border: Border.all(
                            color: Colors.grey,
                            style: BorderStyle.solid,
                            width: 1.0),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_basket, color: Colors.black),
                      ),
                    ),
                    Container(
                      height: 65.0,
                      width: 120.0,
                      decoration: BoxDecoration(
                          border: Border.all(
                              color: Colors.grey,
                              style: BorderStyle.solid,
                              width: 1.0),
                          borderRadius: BorderRadius.circular(10.0),
                          color: Color(0xFF1C1428)),
                      child: Center(
                          child: Text('Call Now',
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.white,
                                  fontSize: 15.0))),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
  Widget _bildName(String name, String foodName, String price) {
    return Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                     Text(
                          name,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold
                            
                          )
                        ),
                    SizedBox(width: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children:[
                        Text(
                          foodName,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold
                          )
                        ),
                        Text(
                          price,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 10.0,
                            color: Colors.grey
                          )
                        )
                      ]
                    )
                  ]
                )
              ),
              IconButton(
                icon: Icon(Icons.add),
                color: Colors.black,
                onPressed: () {}
              )
            ],
          )
        );
  }

  }
  
