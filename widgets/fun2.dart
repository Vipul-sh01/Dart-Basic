abstract class fun{
  void color(){
    print('tthis is pink color');
  }
}


class fun2 extends fun{
  @override
  void color(){
    super.color();
    print('this is red');
  }
}


void main(){
 var Fun = fun2();

 Fun.color();
}