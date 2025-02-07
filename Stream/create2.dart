// A stream is a sequence of asynchronous events. 
//It is like a pipe where data flows. You can listen to a stream to get the data.



Stream<int>getData()async*{ // async* is used to create a stream
  for(int i = 0; i<5; i++){
   await Future.delayed(Duration(seconds: 2));// Future.delayed() is used to wait for the given time.
    yield i; // it will return the value of i
  }
}

void main()async{
  // getData().listen((data){ // listen() is used to listen the stream
  //   print(data);
  // });

  // await for(int value in getData()){ // await for is used to wait for the stream to complete
  //   print(value);
  // }
  
  // getData().toList().then((data){ // toList() is used to convert the stream into list
  //   print(data);
  // });

  getData().asBroadcastStream().listen((Data){
    print(Data);
  });


}
/*
 * There is two Types of stream:
 * 1. Single Subscription Stream: It can be listened only once.
 * Example: getData().listen((data){print(data);});
 * 
 * 
 * 2. Broadcast Stream: It can be listened multiple times.
 * Example: getData().asBroadcastStream().listen((data){print(data);});
 * *getData().toList().then((data){print(data);}); is used to convert the stream into list.

*/ 