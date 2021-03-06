import 'package:flutter/material.dart';
import 'package:newproject/screens/home/printreports.dart';
import 'package:newproject/services/auth.dart';
import 'package:newproject/shared/textfield.dart';
import 'package:flutter/cupertino.dart';

class TrueReport extends StatefulWidget {

  @override
  _TrueReportState createState() => _TrueReportState();
}

class _TrueReportState extends State<TrueReport> {
  void _printButton(){
    showCupertinoModalPopup(
      context: context,
      barrierColor: Colors.blueGrey,
      builder:(context){
        return Container(
          padding: EdgeInsets.symmetric(vertical: 0.0,horizontal: 0.0),
          child: Print(),
        );
      } ,
    );
  }

  final _formkey = GlobalKey<FormState>();
  final List<String> startPrice =['0','1','2'];
  final List<String> finishPrice =['0','1','2'];

  final AuthServices _auth= AuthServices();

  String _img='';
  String _no='';
  String _auction='';
  String _auctionDate='';
  String _lotNo='';
  String _chassisID='';
  String _vendor='';
  String _model='';
  String _mileage='';
  String _enginecc='';
  String _year='';
  String _grade='';
  String _transmission='';
  String _startPrice='';
  String _finishPrice='';
  String _condition='';
  String _status='';

  String error='';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _formkey,
      body:Center(
        child: SingleChildScrollView(
          child:Center(
            child: Column(
                children: <Widget>[
              Text(
                'True Report',
                style: TextStyle(fontSize: 18.0),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Image'),
                validator: (val)=>val!.isEmpty?'please enter a image url':null,
                onChanged: (val)=>setState(()=> _img=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Vehicle No'),
                validator: (val)=>val!.isEmpty?'please enter a Vehicle No':null,
                onChanged: (val)=>setState(()=> _no=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Auction'),
                validator: (val)=>val!.isEmpty?'please enter a Auction':null,
                onChanged: (val)=>setState(()=> _auction=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Auction Date'),
                validator: (val)=>val!.isEmpty?'please enter a Auction Date':null,
                onChanged: (val)=>setState(()=> _auctionDate=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Lot No'),
                validator: (val)=>val!.isEmpty?'please enter a Lot No':null,
                onChanged: (val)=>setState(()=> _lotNo=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Chassis ID'),
                validator: (val)=>val!.isEmpty?'please enter a Chassis ID':null,
                onChanged: (val)=>setState(()=> _chassisID=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Vendor'),
                validator: (val)=>val!.isEmpty?'please enter a Vendor':null,
                onChanged: (val)=>setState(()=> _vendor=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Model'),
                validator: (val)=>val!.isEmpty?'please enter a Model':null,
                onChanged: (val)=>setState(()=> _model=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Mileage'),
                validator: (val)=>val!.isEmpty?'please enter a Mileage':null,
                onChanged: (val)=>setState(()=> _mileage=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Engine CC'),
                validator: (val)=>val!.isEmpty?'please enter a Engine CC':null,
                onChanged: (val)=>setState(()=> _enginecc=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Year'),
                validator: (val)=>val!.isEmpty?'please enter a Year':null,
                onChanged: (val)=>setState(()=> _year=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Grade'),
                validator: (val)=>val!.isEmpty?'please enter a Grade':null,
                onChanged: (val)=>setState(()=> _grade=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Transmission'),
                validator: (val)=>val!.isEmpty?'please enter a Transmission':null,
                onChanged: (val)=>setState(()=> _transmission=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Start Price'),
                validator: (val)=>val!.isEmpty?'please enter a Start Price':null,
                onChanged: (val)=>setState(()=> _startPrice=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Finish Price'),
                validator: (val)=>val!.isEmpty?'please enter a Finish Price':null,
                onChanged: (val)=>setState(()=> _finishPrice=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Condition'),
                validator: (val)=>val!.isEmpty?'please enter a Condition':null,
                onChanged: (val)=>setState(()=> _condition=val),
          ),
              SizedBox(height: 20.0),
              TextFormField(
                decoration: CustomTextField.copyWith(hintText: 'Status'),
                validator: (val)=>val!.isEmpty?'please enter a Status':null,
                onChanged: (val)=>setState(()=> _status=val),
          ),
              SizedBox(height: 15.0),
              ButtonTheme(
                minWidth: 300.0,
                height: 50.0,
                child:
                RaisedButton(
                onPressed: () async
                {
                  try{

                        print('valid');
                        //print(password);
                        dynamic result = await _auth.addReport(_img, _no, _auction,_auctionDate, _lotNo, _chassisID,_vendor, _model, _mileage,_enginecc, _year, _grade,_transmission, _startPrice, _finishPrice,_condition, _status);
                        if(result ==null){
                         //setState(() =>error = 'Could not Sign In with these credentials.');
                        setState(() {
                          error = 'Error in submitting report.';
                        });
                        }else{

                        }
              }catch(e){

              }
            },
                child: Text(
                'SAVE'
            ),
                color: Colors.amberAccent,
                textColor: Colors.white,
                padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                splashColor: Colors.grey,
          ),
              ),
                  SizedBox(height: 15.0),
                  ButtonTheme(
                    minWidth: 300.0,
                    height: 50.0,
                    child:
                    RaisedButton(
                      onPressed: ()=>_printButton(),
                      child: Text('View'),
                      color: Colors.yellow[900],
                      textColor: Colors.white,
                      padding: EdgeInsets.fromLTRB(9, 9, 9, 9),
                      splashColor: Colors.grey,

                    ),),
            ],
        ),
          ),
          ),
      ),
    );
  }
}
