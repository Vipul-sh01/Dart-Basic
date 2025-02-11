class Name{
  static Name? _name; //why static? because we want to access it without creating instance of class;

  Name._();

  factory Name(){
    _name ??= Name._(); // ?? means if _name is null then create new instance;
    return _name!; // ! means it will not be null;
  }
}

void main(){
  var s = Name();
  var s1 = Name();

  print(s == s1);
}