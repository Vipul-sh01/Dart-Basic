/*
* What is singleton pattern?
* The Singleton Pattern ensures that a class has only one instance and provides a global access point to that instance.

* In simple words:

* You create an object once, and reuse it everywhere in your app.
* It prevents creating multiple instances, which saves memory and avoids conflicts.

*/  

class Singleton{
  late String name;
  late int age;

}

// void main(){
//   var user1 = new Singleton();
//   var user2 = new Singleton();
//   print(user2 == user1); // output is false;
// }


/*
 *  WHAT IS FACTORY CONSTRUCTOR?
 * 
 * A factory constructor is a constructor that returns an instance of a class.
 * return an instance of a class that may or may not be a new instance.class
 * You need to return a cached instance instead of always creating a new one (Singleton pattern).
 * You want to return a subclass instance rather than an instance of the class itself.
 * You need asynchronous initialization before returning an instance.
 * 
 * 
 */


class Database {
  static Database? _instance; // Store the single instance

  Database._(); // Private constructor (Cannot be called from outside)

  factory Database() {
    _instance ??= Database._(); // Create instance only if it's null
    return _instance!;
  }
}

void main() {
  var db1 = Database();
  var db2 = Database();

  print(db1 == db2); // Output: true (Same instance)
}
