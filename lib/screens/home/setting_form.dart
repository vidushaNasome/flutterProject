import 'package:flutter/material.dart';
import 'package:newproject/shared/constants.dart';
class SettingsForm extends StatefulWidget {
  //const SettingsForm({Key key}) : super(key: key);

  @override
  _SettingsFormState createState() => _SettingsFormState();
}

class _SettingsFormState extends State<SettingsForm> {

  final _formkey = GlobalKey<FormState>();
  final List<String> price =['0','1','2'];

  String _color='';
  String _price='';
  String _type='';

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          Text(
            'Update your settings',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration,
            validator: (val)=>val!.isEmpty?'please enter a name':null,
            onChanged: (val)=>setState(()=> _price=val),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            onPressed: (){},
          )
        ],
      ),

    );
  }
}
