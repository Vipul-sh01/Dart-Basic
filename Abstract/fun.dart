// A abstract class is a class that cannot be instantiated. It is used to define a common interface for a set of subclasses.
// A class that extends an abstract class must implement all the abstract methods in the superclass.
// If a class does not implement all the abstract methods, then it must also be declared as abstract.

abstract class Animal{
  late String name;
  int? age;


  void eat(); // abstract method.  No implementation that means no body. simmplly no instruction {}
  void move(); // it is used as template for other classes. that means it is used as a blueprint for other classes.

}

class Rat extends Animal{
  @override // it is used to override the method of parent class.
  void eat(){ // used as a template for other classes. whatever we want to do with this method we can do it in other classes.
    print('Rat is eating');
  }
  void move(){ // non abstract method. it has body.
    print('Rat is making sound');
  }

  void ShowName(){
    print('name is $name and age is $age');
  }
}

abstract class WildAnimal {
  void eat();// Abstract method
}

//Q6: whats is interface in dart?
// An interface in Dart is a class that defines a set of abstract methods. like abstract class.

class Dog implements WildAnimal { // implements is used to implement the interface.
  @override
  void eat() => print("Dog is eating"); // it is used to override the method of parent class. and non abstract method.
}

void main() {
  Dog dog = Dog();
  dog.eat(); // Output: Dog is eating
}

// example of interface in dart:
// An interface in Dart is a class that defines a set of abstract methods. like abstract class.


//  Types of interFaces int dart:
// 1. Single Interface // A class can implement a single interface in dart.
// 2. Multiple Interface  //A class can implement multiple interfaces in dart.
// 3. Interface Inheritance // An interface can inherit from another interface in dart. 


// Q1: Difference between abstract class and interface in Dart?
// An abstract class in Dart can have both abstract and non-abstract methods, while an interface can only have abstract methods.
// An abstract class can have fields, constructors, and methods with implementations, while an interface can only have method signatures.

// Q2: Difference between abstract class and concrete class in Dart?
// An abstract class in Dart cannot be instantiated, while a concrete class can be instantiated. 

// Q3: When to use an abstract class in Dart?
// Use an abstract class in Dart when you want to define a common interface for a set of subclasses.

// q4: Difference between extends and implements in Dart?
// The extends keyword is used to create a subclass that inherits from a superclass, 
//while the implements keyword is used to create a class that conforms to an interface.


// q5: What is the use of the @override annotation in Dart?
// The @override annotation is used to indicate that a method in a subclass is overriding a method in the superclass.