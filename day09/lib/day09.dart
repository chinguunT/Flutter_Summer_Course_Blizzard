class Sprite{
  String name = '';
  int x = 0, y = 0;
  int size = 100;
  int direction = 90;
  bool show = true;

  void say(String name){
    print ("Hello my name is $name");
  }
}

void main(){
  final Dee = Sprite();
  final Chick = Sprite();
  final Ruby = Sprite();

  Dee.say('Dee');
  Chick.say('Chick');
  Ruby.say('Ruby');
}