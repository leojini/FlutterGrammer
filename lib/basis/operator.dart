
void operator() {
  double no = 2;
  print(no++);
  print(no * 3);
  print(no % 2);

  // 타입 뒤에 ?를 지정해야 null을 저장할 수 있다.
  double? no2;  // 자동으로 null 저장

  // ??= 은 변수가 null인 경우만 저장된다.
  no2 ??= 3; // no2가 null이므로 3 저장
  no2 ??= 4; // no2가 null이 아니므로 4 저장 안 됨.
  print('no2: ${no2}');

  print('int ${no2 is int}');
  print('double ${no2 is double}');
  print('String ${no2 is String}');
}