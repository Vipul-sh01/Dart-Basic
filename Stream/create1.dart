import 'dart:async';

void main() {
  StreamController<int> controller = StreamController();// StreamController is used to create a stream

  controller.stream.listen((data){ // listen() is used to listen the stream
    print('${data}');
  });

  controller.sink.add(1);// sink is used to add the data in the stream
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);

  controller.close();
}
/*

*StreamController<int>() creates a stream that handles int values.
*controller.stream.listen(...) listens to the stream.
*controller.sink.add(value) sends data into the stream.
*controller.close() closes the stream after use.

*/ 