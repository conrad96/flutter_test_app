import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_database/firebase_database.dart';

class AddUser extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title: new Text('New User'),
        centerTitle: true,
      ),
      body: User(),
    );
  }
}
class User extends StatelessWidget
{
  final DatabaseReference database = FirebaseDatabase.instance.reference().child("users");

  void addUser()
  {
      database.push().set({
        "name" : "Conrad",
        "contact" : "0706848422"
      });
  }

  Widget build(BuildContext context)
  {
    var formElements = new Container(
      padding: EdgeInsets.all(25.0),
      child: new Column(
        children: <Widget>[
          new TextFormField(
            decoration: InputDecoration(
              labelText: 'Names',
              hintText: 'Type your names here'
            ),

          ),
          new TextFormField(
            decoration: InputDecoration(
                labelText: 'Contact',
                hintText: 'Type your phone contact here'
            ),

          ),
          new SizedBox(height: 35.0),
          new RaisedButton.icon(onPressed: ()
          {
            addUser();
          }, icon: Icon(Icons.add), label: Text('Create Account'))

        ],
      ),
    );
    var _formKey = GlobalKey<FormState>();

    return Form(
      key: _formKey,
      child: formElements
    );
  }
}
