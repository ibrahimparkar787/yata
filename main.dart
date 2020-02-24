import 'package:flutter/material.dart';
//import './secondRoute.dart';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/services.dart';

import 'package:yata_test/secondRoute.dart';

String _path;
  Map<String, String> _paths;
  String _extension;
  FileType _pickType;
  bool _multiPick = false;
  

 
  void openFileExplorer() async {
    try {
      _path = null;
      if (_multiPick) {
        _paths = await FilePicker.getMultiFilePath(
            type: _pickType, fileExtension: _extension);
      } else {
        _path = await FilePicker.getFilePath(
            type: _pickType, fileExtension: _extension);
      }
    } on PlatformException catch (e) {
      print("Unsupported operation" + e.toString());
    }
  }

void main() => runApp(
   MaterialApp(
    home: MyApp(),
  )
);

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('First Page'),
        ),
        body: Center(
          child: Column(
          
           children: <Widget>[
              IconButton(
                icon: Icon(Icons.insert_drive_file),
                onPressed: () => openFileExplorer(),
              ),
              IconButton(
                icon: Icon(Icons.image),
                onPressed: () => openFileExplorer(),
                
              ),

              IconButton(
                icon: Icon(Icons.video_library),
                onPressed: () {
                  
                },
              ),

              IconButton(
                icon: Icon(Icons.music_note),
                onPressed: () {
                  
                },
              ),
          RaisedButton(
            child: Text('kldkd')
            ,onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return new SecondRoute();
            }));
          },)
           ],
          
          ),
         ),
      
    );
  }
}