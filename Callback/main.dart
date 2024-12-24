import 'fun.dart';

// void main(){
//   cal(2, 3, sum);
// }

void main(){
  getData(1, (){
    getData(2, (){
      getData(3, null);
    });
  });
}
