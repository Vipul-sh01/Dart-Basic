/*
* Extension methods: Extension methods are a way to add new functionality to existing classes without modifying their source code.
*Enhancing Built-in Classes: You can extend functionality of String, List, Map, etc.
*Improving Readability & Maintainability: Instead of creating utility functions, you can call methods directly on objects.
*Keeping Code Organized: Extension methods keep related functionality together instead of spreading it across utility functions.
*/

// Example: Let's say you want to add a method to capitalize the first letter of a string.

extension stringExtension on String{// extension is used to extend the functionality of existing class.
  String capitalizeFirst(){
    if(this.isEmpty) return this; // this is used to refer the current object.
    return this[0].toUpperCase() + substring(1); // substring() is used for getting the substring of the string.
  }
}

void main(){
  String name = "vipul";
  print(name.capitalizeFirst());
}