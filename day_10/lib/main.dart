class Sprite{
  Sprite(int x, int y){
    this.x = x;
    this.y = y;
  }

  int x = 0;
  int y = 0;

  void makeNoise(){
    print ('My position is ${this.x} and ${this.y}');
  }
}

class Shape{
  int length = 0;
  int height = 0;
  Shape({required int length, required int height}){
    this.length = length;
    this.height = height;
  }

  int x = 0;
  int y = 0;

  void showProperties(){
    print('length is ${this.length} and the height is ${this.height}');
  }
}

class Animal{
  String name = 'name';
  String type = 'type';

  Animal ({required String name, required String type}){
    this.name = name;
    this.type = type;
  }

  void makeNoise(){
    print('Animal Roaring');
  }
}

void main(){
  final drum = Sprite(10, 5);

  drum.makeNoise();

  final square = Shape(length: 5, height: 5);

  square.showProperties();

  final cat = Animal(name: 'Cat', type: 'cat');
}
