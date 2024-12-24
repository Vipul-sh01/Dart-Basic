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

// asyncronous function
  void add(a, b){
   Future.delayed(Duration(seconds: 2), (){
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