// A builder class is a design pattern that allows you to construct a complex object step by step.
// It is useful when you need to create an object with many properties and you want to keep the creation process
// separate from the main class.

class House {
  String? wall;
  String? door;
  String? roof;

  House({this.wall, this.roof, this.door});

  @override
  String toString() {
    return 'House(roof: $roof, door: $door, wall: $wall)';
  }
}



class HouseBuilder {
  String? _wall;
  String? _door;
  String? _roof;

  HouseBuilder setWall(String wall) {
    _wall = wall;
    return this;
  }

  HouseBuilder setDoor(String door) {
    _door = door;
    return this;
  }

  HouseBuilder setRoof(String roof) {
    _roof = roof;
    return this;
  }

  House build() {
    return House(wall: _wall, roof: _roof, door: _door);
  }
}

void main() {
  House house = HouseBuilder()  // ✅ Corrected method calls
      .setRoof('gsfgh')
      .setWall('mxj')
      .setDoor('jc')
      .build();

  print(house);  
  // Output: House(roof: gsfgh, door: jc, wall: mxj)
}
