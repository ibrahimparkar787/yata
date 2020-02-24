import 'package:flutter/material.dart';

class SecondRoute extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text('Second Page'),
        ),
        body: Center(
          child: RaisedButton(
            child: Text('button back'),
            onPressed: (){
              Navigator.pop(context);
           },
         ),
       ),
     ),
    );
   }
  }