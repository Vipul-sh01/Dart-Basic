/*
1. What is ListView.builder in Flutter?
ListView.builder is a constructor in Flutter that creates a dynamic list where items are generated lazily as they are scrolled into view.
This is more memory-efficient than ListView with a fixed list of children, especially when dealing with large datasets.

Example: 

ListView.builder(
  itemCount: totalItems,  // Total number of items
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('Item $index'),
    );
  },
)

Parameters:

* itemCount: (Optional) The total number of items in the list. If not provided, the list will be infinite.
* itemBuilder: A function that returns a widget for each item in the list. It takes:
* context → The BuildContext.
* index → The index of the item being built.
* scrollDirection: Sets the scrolling direction (Axis.horizontal or Axis.vertical).
* physics: Defines the scroll behavior (e.g., BouncingScrollPhysics, NeverScrollableScrollPhysics).

*/ 