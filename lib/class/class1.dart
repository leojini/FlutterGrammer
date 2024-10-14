
class Person {
  final String name;
  final String idNumber;
  int _age = 5; // private 변수: 변수 이름 앞에 _(under score)를 붙인다. 같은 파일에서만 접근 가능

  // 생성자
  // Person(String name, int idNumber)
  //     : this.name = name, this.idNumber = idNumber;
  Person(this.name, this.idNumber);

  // 네임드 생성자(클래스명.네임드 생성자명)
  Person.fromMap(Map<String, dynamic> map)
      : this.name = map['name'],
        this.idNumber = map['idNumber'],
        this._age = map['age'];

  int get age {
    return _age;
  }

  set age(int age) {
    this._age = age;
  }

  void sayName() {
    print('저는 ${name}입니다.');
    print('id 번호는 ${idNumber}입니다.');
    print('나이는 ${_age}입니다.');
  }
}

void class1() {
  Person st = Person('홍길동', 'efe2');
  st.sayName();

  st = Person.fromMap({
    'name': '철수',
    'idNumber': 'aa15',
    'age': 12,
  });
  // _age(private 변수)의 set, get은 아래와 같이 변수처럼 사용된다.
  st.age = 22;
  st.sayName();
  print('나이 -> ${st.age}');
}