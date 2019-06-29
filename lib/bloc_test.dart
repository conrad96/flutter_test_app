import 'package:flutter/material.dart';

class BlocExample extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Bloc partten exple"),
        centerTitle: true,
      ),
      body: Center(
        child: Container(
      child: Column(
        children: <Widget>[
          Padding(child: Text("Hello", style: TextStyle(fontSize: 50.0),),padding: EdgeInsets.only(top: 100.0),),
          FloatingActionButton(
            child: RaisedButton(
              onPressed: (){},
              child: Text("+"),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
            ),
          )
        ],
      ),
    ),
      ),
    );
  }
}