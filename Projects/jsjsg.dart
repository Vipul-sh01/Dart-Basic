Stream<int>getData()async*{ // async* is used to create a stream
  for(int i = 0; i<5; i++){
   await Future.delayed(Duration(seconds: 2));
    yield i; // it will return the value of i
  }
}

void main() async {
  await for(int value in getData()){
    print(value);
  }
}