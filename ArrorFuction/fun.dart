class Count{
  int C = 0;
  void increament(){
    print(++C);
  }
}

class CountModel{
  var call = Count();

  int get C{
    return call.C;
  }

  void forView(){
    call.increament();
  }
}

void main(){
  var countModel = CountModel();
  countModel.forView();
  print("${countModel.C}");
}

