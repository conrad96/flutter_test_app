import 'package:flutter/material.dart';
import 'add_user.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget{

  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Chat App Firebase Demo',
      color: Colors.redAccent,
      home: AddUser(),
      theme: ThemeData.dark(),
    );
  }
}