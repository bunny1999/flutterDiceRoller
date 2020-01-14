import 'package:flutter/material.dart';
import 'dart:math';

class LogicalPart extends StatefulWidget {
  @override
  _LogicalPartState createState() => _LogicalPartState();
}

class _LogicalPartState extends State<LogicalPart> {
  AssetImage one = AssetImage('images/one.png');
  AssetImage two = AssetImage('images/two.png');
  AssetImage three = AssetImage('images/three.png');
  AssetImage four = AssetImage('images/four.png');
  AssetImage five = AssetImage('images/five.png');
  AssetImage six = AssetImage('images/six.png');

  AssetImage showImage1;
  AssetImage showImage2;

  @override
  void initState(){
    super.initState();
    setState(() {
      showImage1 = one;
      showImage2 =six;
    });
  }
  
  imageChanger(){
    var random1 = (1+Random().nextInt(6));
    var random2 = (1+Random().nextInt(6));
    AssetImage temp1;
    AssetImage temp2;
    switch(random1){
      case 1:
      temp1 =one;
      break;
      case 2:
      temp1 = two;
      break;
      case 3:
      temp1 = three;
      break;
      case 4:
      temp1 = four;
      break;
      case 5:
      temp1 = five;
      break;
      case 6:
      temp1 = six;
      break;
    }
    switch(random2){
      case 1:
      temp2 =one;
      break;
      case 2:
      temp2 = two;
      break;
      case 3:
      temp2 = three;
      break;
      case 4:
      temp2 = four;
      break;
      case 5:
      temp2 = five;
      break;
      case 6:
      temp2 = six;
      break;
    }
    setState(() {
      showImage1 =temp1;
      showImage2 = temp2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dice Roller'),
        backgroundColor: Color(0xFFFAB432),
      ),
      body:Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Image(
                      image: showImage1,
                      height: 150.0,
                      width: 150.0,
                    ),
                    Padding(padding: EdgeInsets.only(right: 10.0),),
                    Image(
                      image: showImage2,
                      height: 150.0,
                      width: 150.0,
                    )
                  ],
                ),
                Container(
                margin: EdgeInsets.only(top:100.0),
                child: RaisedButton(
                  color: Color(0xFFFBC034),
                  child: Text('Roll It Out!',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,),),
                  padding: EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 10.0),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
                  onPressed: imageChanger, 
                ),              
              )
            ],
          ),
        ), 
      )
    );
  }
}