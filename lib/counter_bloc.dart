import 'dart:async';

import 'package:flutter/material.dart';


abstract class counterEvent{}

class incrementCounter extends counterEvent{
  var _counter = 0;
  final _counterStreamController = StreamController<int>();
  //create sink counter event
  StreamSink<int> get counter_sink => _counterStreamController.sink;

  //expose data from stream
  Stream<int> get stream_counter => _counterStreamController.stream;

  final _counterEventController = StreamController<counterEvent>();

  Sink <counterEvent> get counter_event_sink{
    return _counterEventController.sink;
  }

  _count(counterEvent event){
    counter_sink.add(++_counter);
  }
}