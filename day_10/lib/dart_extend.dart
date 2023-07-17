class Shape{
  int size = 100;
  int length = 0;
  int height = 0;
  Shape({required int size, required int length, required int height}){
    this.size = size;
    this.length = length;
    this.height = height;
  }

  void showInfo(){
    print ('am a shape');
  }
}

class Rectangle extends Shape{
  Rectangle({required super.size, required super.length, required super.height});
  @override
  void showInfo(){
    print('am a rectangle');
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

class Pig extends Animal{
  Pig({required super.name, required super.type});


  @override
  void makeNoise(){
    print ('Oink oink!');
  }
}

class Cat extends Animal{
  Cat({required super.name, required super.type});

  @override
  void makeNoise(){
    print('Meowww');
  }


}

class Horse extends Animal{
  Horse({required super.name, required super.type});

  @override
  void makeNoise(){
    print('iinhoo!');
  }
}

void main(){
  final square = Shape(size: 100, length: 5, height: 5);

  final rectangle = Rectangle(size: 100, length: 10, height: 20);
  rectangle.showInfo();



  final pig = Pig(name: 'peppa', type: 'pig');
  pig.makeNoise();

  final cat = Cat(name: 'muujgai', type: 'cat');
  cat.makeNoise();

  final horse = Horse(name: 'unaga', type: 'horse');
  horse.makeNoise();
}