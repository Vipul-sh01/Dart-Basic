import 'fun.dart';

void main(){
  // userName user = new userName();
  // user.name = 'vipul';
  // user.age = 20;
  // user.display();

  person Person = new person();
  Person.name = 'sharma';
  Person.age = 21;
  Person.address = 'Noida';
  Person.pinCode = 201301;
  Person.a = 5;
  Person.b = 6;
  Person.add(Person.a, Person.b);
  Person.ShowName();
}