
typedef Func2 = int Function(int x, int y);

void variable() {
  variable1();
  variable2();

  Func2 func2 = add;
  print('func2: ${func2(2, 2)}');
  func2 = subtract;
  print('func2: ${func2(3, 2)}');
}

void variable1() {
  var name = 1; // 다른 type은 설정할 수 없다.
  dynamic name2 = '2'; // 다른 type을 설정할 수 있다.
  // name = '3';
  name2 = 3;
  print('name: ${name}');
  print('name2: ${name2}');

  final String name3 = '블랙핑크';
  const String name4 = 'BTS';
  print('name3: ${name3}');
  print('name4: ${name4}');
}

void variable2() {
  final DateTime now = DateTime.now();
  print('now: ${now}');

  // 실행시에 저장되어야 하는 변수는 final로 설정한다. const 로 설정시 빌드 오류 발생
  // const DateTime now2 = DateTime.now();
  // print('now2: ${now2});

  // 아래와 같이 type을 명시해주면 직관적이어서 코드 가독성이 올라간다.
  String name5 = '서울';
  int value = 3;
  double value2 = 3.2;
  bool isOpen = true;
  print('name5: ${name5}');
  print('value: ${value}');
  print('value2: ${value2}');
  print('isOpen: ${isOpen}');
}

int add(int x, int y) {
  return x + y;
}

int subtract(int x, int y) {
  return x - y;
}