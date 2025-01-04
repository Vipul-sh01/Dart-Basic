abstract class Widget{
  final String name;
  final String Address;

  Widget({required this.name, required this.Address});

 Widget build();
}

class StatalessWidget extends Widget{
  StatalessWidget({required String name, required String Address}) : super(name: name, Address: Address);

  @override
 Widget build(){
  return StatalessWidget(name: name, Address: Address);
 }
}

class MyWidget extends StatalessWidget{
  MyWidget({required String name, required String address}):super(name: name, Address: address);

  @override
  build(){
  return MyWidget(name: name, address: Address);
 }
}

void main(){
  MyWidget myWidget = new MyWidget(name: 'vipul', address: 'pune');
  myWidget.build();

  
}

// Q1: what is Stateless widget?

// A Stateless Widget in Flutter is a widget that does  hold immutable state. 
//This means that its appearance and behavior are defined only by the data it receives via its constructor, 
//and it does not change dynamically after being built.