import 'package:grammer/class/class1.dart';

// 인터페이스 용도의 클래스
class Fruit {
  final int sour;
  final int sweet;

  Fruit(this.sour, this.sweet);

  void taste() {
    print("taste sour: ${sour}, sweet: ${sweet}");
  }
}

// 인터페이스 구현시 인터페이스의 필드 및 메소드를 재정의 해야 한다.
class Apple implements Fruit {
  final int sour;
  final int sweet;
  final String color;
  Apple(this.sour, this.sweet, this.color);
  void taste() {
    print("taste apple sour: ${sour}, sweet: ${sweet}, color: ${color}");
  }
}

// 믹스인: 클래스에 원하는 기능 추가 가능.
mixin FruitMixin on Fruit {
  void weight() {
    print('wieght sour: ${sour}, sweet: ${sweet}');
  }
}

class Grape extends Fruit with FruitMixin {
  Grape(super.sour, super.sweet);

  void ripe() {
    print('포도가 익다');
  }
}

void class3() {
  Apple ap = Apple(3, 4, 'red');
  ap.taste();

  Grape gp = Grape(5, 8);
  gp.ripe();
}