// what is typedef in dart
// answer: typedef is used to define a function type.
typedef Opertioned = Function (int a, int b);

int calcut(int a, int b, Opertioned op){ // why used op?
  // op is a function that takes two integers and returns an integer
  
  return a+b;
}

void main(){
  print(calcut(1, 6, (x,y) => x+y));
}