/*Q1: what is flutter?
Flutter is an open-source UI software development kit created by Google. 
It is used to develop applications for Android, iOS, Linux, Mac, Windows, Google Fuchsia, and the web from a single codebase. 
Flutter uses the Dart programming language for app development.


Q2: How RenderObject works in flutter?
RenderObject is a low-level abstraction in Flutter that represents a part of the user interface.
Each widget in the widget tree is associated with a RenderObject, which is responsible for rendering the widget on the screen.

Q3: what is Render in flutter?
In Flutter, Rendering is the process of converting the widget tree into a visual representation on the screen. 
The rendering process is managed by the rendering layer, which is a lower-level system beneath the widget layer.

Key Components of the Rendering Process:

1. Widget Tree:
Widgets describe the configuration of your UI.
They are immutable and lightweight representations of the UI.

2. Element Tree:
Elements are created from widgets and are responsible for managing the widget lifecycle.
They are mutable and maintain the state of the UI.
Elements are the instantiations (object) of widgets in the UI.

3. Render Tree:
Render objects are created from elements and are responsible for rendering (visualiztion on screen) the UI.
The rendering system creates a RenderObject tree to handle the actual layout, painting, and hit-testing.

RenderObjects are responsible for:
Layout: Measuring and positioning.
Painting: Drawing on the screen.
Hit Testing: Handling user interactions.
*/