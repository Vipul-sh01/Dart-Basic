// Q: What is a widget in Flutter?
//A Widget is a class used to create a new object. 
//It is a blueprint for creating objects. 
//It is a subclass of a StatelessWidget or StatefulWidget. 
//It is a reusable component that can be used in multiple places in the application. 

abstract class TestWidget{
  final String Name;
  final int Size;

  const TestWidget({required this.Name, required this.Size});
}

class MakeOwnWidget extends TestWidget{
  final String Address;
  const MakeOwnWidget({required String Name, required int Size, required this.Address}) : super(Name: Name, Size: Size);

  void DisplayWidget(){
    print('$Name and $Size, and $Address');
  }

}



/*
Q: is widget is class?
Yes, in Flutter, a Widget is a class. It is the building block for creating user interfaces in Flutter applications.
All UI elements in Flutter are represented as Widgets.

Key Points About Widgets:
Base Class:

Flutter provides an abstract base class called Widget, which is part of the flutter framework.
There are two primary types of widgets in Flutter:
StatelessWidget: Used for widgets that do not need to maintain any state.
StatefulWidget: Used for widgets that need to maintain and update their state.


Inheritance:

Widgets in Flutter are typically created by extending either StatelessWidget or StatefulWidget.
Example:
dart

import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text('Hello, World!');
  }
}
Composition:

Widgets are often composed of other widgets to create complex UIs.
Immutability:

Widgets are immutable by nature, meaning their properties cannot change after being created. For dynamic behavior, 
a StatefulWidget uses a separate State object to manage changes.
Widget Tree:

Flutter applications are built by nesting widgets to form a widget tree. This tree determines the UI layout and behavior.
Would you like more details on any specific type of widget?

*/