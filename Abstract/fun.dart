// A abstract class is a class that cannot be instantiated. It is used to define a common interface for a set of subclasses.
// A class that extends an abstract class must implement all the abstract methods in the superclass.
// If a class does not implement all the abstract methods, then it must also be declared as abstract.

abstract class Animal{
  late String name;
  late int age;


  void eat(); // abstract method.  No implementation that means no body. simmplly no instruction {}
  void move(); // it is used as template for other classes. that means it is used as a blueprint for other classes.

}

class Rat extends Animal{
  @override // it is used to override the method of parent class.
  void eat(){ // used as a template for other classes. whatever we want to do with this method we can do it in other classes.
    print('Rat is eating');
  }
  void move(){
    print('Rat is making sound');
  }

  void ShowName(){
    print('name is $name and age is $age');
  }
}

