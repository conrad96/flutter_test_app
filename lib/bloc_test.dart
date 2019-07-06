import 'package:flutter/material.dart';
class BlocExample extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _bloc();
  }
}
class _bloc extends State<BlocExample>{
  var counter = 0;
  counter_inc(){
    counter++;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      padding: EdgeInsets.only(left: 150.0,right: 50.0),
      child: Column(
        children: <Widget>[
          Text("${counter}", style: TextStyle(fontSize: 45.0),),
          SizedBox(height: 95.0,),
          RaisedButton(
            onPressed: (){
              counter_inc();
            },
            color: Colors.blue,
            child: Text("+"),
          )
        ],
      ),
    );
  }
}