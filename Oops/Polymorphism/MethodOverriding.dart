// Method Overriding

class AnimalSound{
  void makeSound(){
    print('Make Animal Sound');
  }
}


class cat extends AnimalSound{
  @override
  void makeSound(){
    print('meow');
  }
}

class dog extends AnimalSound{
  @override
  void makeSound(){
    print('Dogs bark');
  }
}


void main(){
  var far = cat();
  var far1 = dog();
  far.makeSound();
  far1.makeSound();
}
