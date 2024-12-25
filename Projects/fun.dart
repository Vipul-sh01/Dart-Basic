// A claaa is a blueprint for creating objects. 
//A class encapsulates data for the object. 
//A class can have properties and methods. 
//A class can be used to create multiple objects. 
//A class can inherit properties and methods from another class.

class UserName{
  String name; // this is a property of the class
  UserName(this.name); // this is a constructor of the class

  void ShowName(){ // this is a method of the class
    print(name);
  }
}