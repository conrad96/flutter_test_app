import 'package:flutter/material.dart';

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
  Widget build(BuildContext context)
  {
    var formElements = new Container(
      child: new Column(
        children: <Widget>[
          new TextFormField(
            decoration: InputDecoration(
              labelText: 'names',
              hintText: 'Type your names here'
            ),

          ),
          new TextFormField(
            decoration: InputDecoration(
                labelText: 'Contact',
                hintText: 'Type your phone contact here'
            ),

          ),
          new RaisedButton.icon(onPressed: (){}, icon: Icon(Icons.add), label: Text('Create Account'))

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
