class userName{
  late String name;
  late int age;

  void display(){
    print('name is $name and age is $age');
  }
}


// useing inharetance in dart 
class person extends userName{
  late String address;
  late int pinCode;
  late int a;
  late int b;

// asyncronous function: it is used to wait for some time before executing the code. 
  void add(a, b){
   Future.delayed(Duration(seconds: 2), (){ // it will wait for 2 seconds
      print(a+b);
   });
  }


  void ShowName(){
    print('$name');
    print('$age');
    print('$address');
    print('$pinCode');
  }
}