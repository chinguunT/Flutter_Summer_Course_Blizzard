import 'dart:io';

class Cat {
  final String _asciiArt = '''
   /\\_/\\
  ( o.o )
   > ^ <
  ''';

  int x = 0, y = 0;

  void display(){
    List<String >lines = _asciiArt.trim().split('\n');
    for (int i = 0; i < lines.length; i++) {
      if (i == y) {
        print('' * x + lines[i]);
      } else {
        print(lines[i]);
      }
    }
  }

  void move(int x1, int y1){
    x = x1;
    y = y1;
    display();
  }

}

void main(){
  var cat = Cat();


  while (true){
    print (cat._asciiArt);
    String? a = stdin.readLineSync();
    stdin.lineMode = false;
    stdin.echoMode = false;
    stdin.asBroadcastStream().listen((List<int> data){
      String key = String.fromCharCodes(data);
      print(key);
      if (key == 'w'){
        cat.move(5, 0);
      } else if (key == 'a'){
        cat.move(0, -5);
      } else if (key == 's'){
        cat.move(-5, 0);
      } else if (key == 'd'){
        cat.move(0, 5);
      }
    });
  }
}