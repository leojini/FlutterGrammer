
// 추상 클래스
// - 추상은 상속이나 인터페이스로 사용하는 데 필요한 속성만 정의하고 인스턴스화 할 수 없도록 한다.
abstract class Animal {
  final String name;
  final int age;

  Animal(this.name, this.age);

  void sayName();
  void sayAge();
}

// implements 하는 클래스에서 추상 클래스의 속성 및 메소들을 구현해주어야 한다.
class Monkey implements Animal {
  final String name;
  final int age;

  Monkey(this.name, this.age);

  void sayName() {
    print('나는 원숭이, 이름은 $name입니다.');
  }

  void sayAge() {
    print('원숭이 나이는 $age살 입니다.');
  }
}

void class4() {
  Monkey mk = Monkey('dolly', 10);
  mk.sayName();
  mk.sayAge();
}