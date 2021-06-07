import 'package:flutter/material.dart';
import 'package:newproject/screens/home/displayfeedbacks.dart';
import 'package:newproject/screens/home/home.dart';
import 'package:newproject/services/auth.dart';
import 'package:newproject/shared/constants.dart';
class Feedbacks extends StatefulWidget {
  //const SettingsForm({Key key}) : super(key: key);

  @override
  _FeedbacksState createState() => _FeedbacksState();
}

class _FeedbacksState extends State<Feedbacks> {

  final _formkey = GlobalKey<FormState>();
  final List<String> price =['0','1','2'];

  final AuthServices _auth= AuthServices();

  String _date='';
  String _feedback='';
  String _email='';

  String error='';


  @override
  Widget build(BuildContext context) {
    void _showFeedbackspanel(){
      showModalBottomSheet(
        context: context,
        builder:(context){
          return Container(
            padding: EdgeInsets.symmetric(vertical: 20.0,horizontal: 60.0),
            child: Displayfeedbacks(),
          );
        } ,
      );
    }
    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          Text(
            'Feedbacks and Complaints',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Email'),
            validator: (val)=>val!.isEmpty?'please enter a Vehicle Email':null,
            onChanged: (val)=>setState(()=> _email=val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Feedback'),
            validator: (val)=>val!.isEmpty?'please enter a Vehicle Feedback':null,
            onChanged: (val)=>setState(()=> _feedback=val),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Date'),
            validator: (val)=>val!.isEmpty?'please enter a Date':null,
            onChanged: (val)=>setState(()=> _date=val),
          ),
          SizedBox(height: 20.0),
          RaisedButton(
            onPressed: () async
            {
              try{

                print('valid');
                //print(password);
                dynamic result = await _auth.addFeedback(_email, _date, _feedback);
                if(result ==null){
                  //setState(() =>error = 'Could not Sign In with these credentials.');
                  setState(() {
                    error = 'Error in submitting feedbacks.';
                  });
                }else{

                }
              }catch(e){

              }
            },
            child: Text(
                'SAVE'
            ),
          ),
          RaisedButton(
            onPressed: ()=>_showFeedbackspanel(),
            child: Text('View Feedbacks '),
          ),
        ],
      ),

    );
  }
}
