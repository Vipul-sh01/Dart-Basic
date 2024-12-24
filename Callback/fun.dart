// void sum(int a, int b){
//   print(a+b);
// }

// void cal(a, b, cb){
//   cb(a, b);
// }


void getData(Data, nextData){
  print('Getting Yout Data');
  Future.delayed(Duration(seconds: 2),(){
    print('Data is $Data');
    if(nextData != null){
      nextData();
    }
  });
}



