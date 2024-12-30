class A{
  late String name;
  late int age;

  void Show(){
    print('$name and $age');
  }
}

class B extends A{
  void Show(){
    print('$age and $name and ');
  }
}

void main(){
  B b = new B();
  b.age = 21;
  b.name = 'vipul';
  b.Show();
}