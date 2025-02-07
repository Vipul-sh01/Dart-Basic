Stream<int> numberStream() async* {
  for (int i = 1; i <= 10; i++) {
    yield i;
  }
}

void main() {
  numberStream()
      .where((num) => num.isEven)  // Filters even numbers
      .map((num) => num * 2)       // Doubles each number
      .listen((data) => print("Transformed: $data"));
}
