//  If multiple listeners are needed, use .asBroadcastStream().
import 'dart:async';
StreamController<int> controller = StreamController<int>.broadcast();

void main() {
  // Listener 1
  controller.stream.listen((data) => print("Listener 1: $data"));

  // Listener 2
  controller.stream.listen((data) => print("Listener 2: $data"));

  controller.sink.add(10);
  controller.sink.add(20);
}
