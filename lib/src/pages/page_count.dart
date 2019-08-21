import 'package:flutter/material.dart';
import 'package:flutter_planet/src/utils/appcolors.dart';

  class PageCount extends StatefulWidget {
    
    @override
    createState() => _PageCountState();
  }

  class _PageCountState extends State<PageCount>{
  
     final _styleText = new TextStyle(
       fontSize: 25,
        );
     int _cont = 0;

    @override
     Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.WhiteBgColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'ArmagHEADdon?!',
          style: TextStyle(
            color: AppColors.Black,
            fontSize: 22.0,
          ),
        ),
        
        centerTitle: true,
        elevation: 1.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Show Me What You Got!! ',style: _styleText),
            Text('How Many taps??',style: _styleText),
            Text('$_cont' ,style: TextStyle(fontSize: 90, ))
          ],
        ),
      ),
        floatingActionButton: _buttons()
    );
  }
  
  Widget _buttons() {

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        SizedBox(width: 30.0),
        FloatingActionButton( child: Icon(Icons.exposure_zero),onPressed: _reset),
        Expanded(child: SizedBox(),),
        FloatingActionButton( child: Icon(Icons.remove_circle),onPressed: _subs),
        SizedBox(width: 8.0,),
        FloatingActionButton( child: Icon(Icons.add),onPressed: _add),
      ],
    );
    
  }

  void _add(){
    setState(() => _cont++);
  }
  void _subs(){
    setState(() => _cont--);
  }
  void _reset(){
    setState(() => _cont = 0);
    _showAlertMessage(this.context, 'Winner!', 'Good Job!');

  }

  //Function to Show Alert Dialog for showing messages
  void _showAlertMessage(BuildContext context, String title, String message) {
    var alert = new AlertDialog(
      title: Text("$title"),
      content: Text("$message"),
      actions: <Widget>[
        FlatButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("OK"),
        )
      ],
    );

    showDialog(context: context, builder: (context) => alert);
  }

  }