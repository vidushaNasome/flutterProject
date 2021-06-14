import 'package:flutter/material.dart';
import 'package:newproject/screens/home/home.dart';
import 'package:newproject/services/auth.dart';
import 'package:newproject/shared/constants.dart';
class Addvehicles extends StatefulWidget {
  //const SettingsForm({Key key}) : super(key: key);

  @override
  _AddvehiclesState createState() => _AddvehiclesState();
}

class _AddvehiclesState extends State<Addvehicles> {

  final _formkey = GlobalKey<FormState>();
  final List<String> price =['0','1','2'];

  final AuthServices _auth= AuthServices();

  String _color='';
  String _price='';
  String _type='';
  String _url='';
  List _code=[];
  String error='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formkey,
      body: Center(
        child: SingleChildScrollView(
        child:Center(
        child: Column(
        children: <Widget>[
          Text(
            'Add Vehicles',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Type'),
            validator: (val)=>val!.isEmpty?'please enter a Vehicle Type':null,
            onChanged: (val)=>setState(()=> _type=val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Color'),
            validator: (val)=>val!.isEmpty?'please enter a Vehicle Color':null,
            onChanged: (val)=>setState(()=> _color=val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Price'),
            validator: (val)=>val!.isEmpty?'please enter a Vehicle Price':null,
            onChanged: (val)=>setState(()=> _price=val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Url'),
            validator: (val)=>val!.isEmpty?'please enter a Vehicle Image Url':null,
            onChanged: (val)=>setState(()=> _url=val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'More Color'),
            validator: (val)=>val!.isEmpty?'please enter a Vehicle Image Url':null,
            onChanged: (val)=>setState(()=> _url=val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'More Color'),
            validator: (val)=>val!.isEmpty?'please enter a Vehicle Image Url':null,
            onChanged: (val)=>setState(()=> _url=val),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            onPressed: () async
            {
              try{

                  print('valid');
                  //print(password);
                  dynamic result = await _auth.addVehicle(_type, _color, _url, _price,_code);
                  if(result ==null){
                    //setState(() =>error = 'Could not Sign In with these credentials.');
                    setState(() {
                      error = 'Could not Sign In with these credentials.';
                    });
                  }else{

                  }
                }catch(e){

              }
            },
            child: Text(
              'SAVE'
            ),
          )
        ],
      ),
    ),
          ),
      ),
    );
  }
}
