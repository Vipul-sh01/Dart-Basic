

abstract class user{
  late String name;
  late int age;
  user({required this.name, required this.age});
}

mixin prouser{
  late int salary;
  void display(){
    print('hello vipul');
  }
}

class student extends user{
  student({required String name, required int age}): super(name: name, age: age);

  void sayname(){
    print('${this.name} and ${this.age}');
  }
}

class primeryteacher extends user with prouser{
  primeryteacher({required String name, required int age}): super(name: name, age: age);
  
  
}

class highteacher extends user with prouser{
  highteacher({required String name, required int age}): super(name: name, age: age);
}