import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/screens/home/displayfeedbacks.dart';
import 'package:newproject/screens/home/feedback_new.dart';
import 'package:newproject/screens/home/home.dart';
import 'package:newproject/screens/home/vehicle_list.dart';
import 'package:newproject/services/auth.dart';
import 'package:newproject/shared/constants.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:intl/intl.dart';
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
      showCupertinoModalPopup(
        context: context,
        barrierColor: Colors.blueGrey,
        builder:(context){
          return Container(
            padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
            child: FeedbackNew(),
          );
        } ,
      );
    }
    DateTime selectedDate = DateTime.now();

    Future<void> _selectDate(BuildContext context) async {
      final DateTime picked = (await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2015, 8),
          lastDate: DateTime(2101)))!;

      if (picked != null && picked != selectedDate)
        setState(() {
          //String date = DateFormat("yyyy-MM-dd hh:mm:ss").format(DateTime.now());
          _date = DateFormat("yyyy-MM-dd hh:mm:ss").format(DateTime.now());

        });
    }

    return Form(
      key: _formkey,
      child: Column(
        children: <Widget>[
          Text(
            'Feedbacks and Complaints',
            style: TextStyle(fontSize: 18.0),
          ),
          SizedBox(height: 15.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Email'),
            validator: (val)=>val!.isEmpty?'please enter a Vehicle Email':null,
            onChanged: (val)=>setState(()=> _email=val),
          ),
          SizedBox(height: 15.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Feedback'),
            validator: (val)=>val!.isEmpty?'please enter a Vehicle Feedback':null,
            onChanged: (val)=>setState(()=> _feedback=val),
          ),
          /*SizedBox(height: 20.0),
          TextFormField(
            decoration: textInputDecoration.copyWith(hintText: 'Date'),
            validator: (val)=>val!.isEmpty?'please enter a Date':null,
            onChanged: (val)=>setState(()=> _date=val),
          ),*/
          SizedBox(height: 15.0),
          RaisedButton(
            onPressed: () => _selectDate(context),
            child: Text('Selected date:'+_date),
          ),
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
            child: Text('View Feedbacks'),
          ),
        ],
      ),

    );
  }
}
