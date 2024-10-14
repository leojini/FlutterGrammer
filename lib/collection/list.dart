
// list: 여러 값을 순서대로 저장
void list() {
  List<String> list = ['aaa', 'bbb', 'ccc', 'ddd'];
  print(list);
  print(list[2]);
  print(list.length);
  list[2] = '토니';
  print(list[2]);

  list.add('ㅌㅌ');
  print(list);

  // where은 조건에 맞는 데이터의 값을 반환
  final iterable = list.where((element) => element != '리사'); // 이터러블 반환
  final list2 = iterable.toList();
  print(list2);

  // map은 리스트의 각 요소를 변경할 수 있다.
  final list3 = list.map((e) => '${e} tail').toList();
  print(list3);

  // reduce는 값을 쌓아간다. where, map과 다르게 list 형태를 반환한다.
  final list4 = list.reduce((value, element) => value + ', ' + element);
  print(list4);

  final list5 = list.fold<int>(0, (previousValue, element) => previousValue + element.length);
  print(list5);
}