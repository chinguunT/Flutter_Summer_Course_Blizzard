class Building{
  String name = 'name';
  Floors floors = Floors(numberOfFloors: 3);
  Door door = Door(numberOfDoors: 5);
  Building ({required String name, required Floors floors, required Door door}){
    this.name = name;
    this.floors = floors;
    this.door = door;
  }
}

class Door{
  int numberOfDoors = 4;
  Door ({required int numberOfDoors}){
    this.numberOfDoors = numberOfDoors;
  }
}

class Floors{
  int numberOfFloors = 5;
  Floors ({required int numberOfFloors}){
    this.numberOfFloors = numberOfFloors;
  }
}

class Wheel {
  int numberOfWheels = 0;

  Wheel ({required int numberOfWheels}){
    this.numberOfWheels = numberOfWheels;
  }
}

class Car{
  String name = 'Car';
  Wheel dugui = Wheel(numberOfWheels: 4);

  Car ({required String name, required Wheel dugui}){
    this.name = name;
    this.dugui = dugui;
  }
}

void main(){
  final tesladugui = Wheel(numberOfWheels: 5);
  final car = Car(name: 'Tesla', dugui: tesladugui);

  final tsonh = Floors(numberOfFloors: 5);
  final haalga = Door(numberOfDoors: 4);
  final build = Building(name: 'teslaCo', floors: tsonh, door: haalga);
}