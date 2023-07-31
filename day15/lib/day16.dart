// ignore_for_file: avoid_print

void main(){
  var a = 16;

  // if else version
  if (a > 15) {
    print('cool');
  } else {
    print('uncool');
  }

  a > 15 ? print('cool') : print('uncool');

  bool isBigger = a > 15 ? false : true;

  print(isBigger);
}