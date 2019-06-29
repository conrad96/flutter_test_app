import 'package:flutter/material.dart';
import 'bloc_test.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget{

  Widget build(BuildContext context)
  {
    return MaterialApp(
      title: 'Bloc parttern tests',
      color: Colors.redAccent,
      home: BlocExample(),
      theme: ThemeData.dark(),
    );
  }
}