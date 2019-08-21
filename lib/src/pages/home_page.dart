import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  final styleText = new TextStyle(fontSize: 25);
  final cont = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ArmagHEADdon?!'),
        centerTitle: true,
        elevation: 1.5,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Show Me What You got!! ',style: styleText),
            Text('I want to see, How Many taps??',style: styleText),
            Text('$cont' ,style: TextStyle(fontSize: 60, ))
          ],
        ),
      ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton(
          child:Icon(Icons.add),
          onPressed: () {
            print('Yeaah!!');
            //cont += cont;
        },
      ),
    );
  }
}
