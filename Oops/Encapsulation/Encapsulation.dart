class students{
  late String name;
  late int _age;

  void setage(int age){
    if(age>0){
      _age = age;
    }
  }

  int getage(){
    return _age;
  }

  void display(){
    print(this._age);
  }
}

