// Error: A value of type 'Null' can't be assigned to a variable of type 'int'.

// int a = null; // this is not nullable variable

/*
A nullable variable is a variable that can hold a null value. 
In Dart, you can declare a nullable variable by adding a question mark (?) after the data type.
 For example, int? a = null; 
 This allows you to assign null to the variable without causing a compilation error.


 Use case:

  Nullable variables are useful when you need to represent the absence of a value or when you 
  want to differentiate between a null value and a default value.
*/
int? a = null; // this is nullable variable
