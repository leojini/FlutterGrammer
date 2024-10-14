
// 제네릭
// - 특정 변수나 타입으로 제한하고 싶지 않을 때 사용
class Cache<T> {
  final T data;

  Cache({
    required this.data,
  });
}

void class5() {
  List<int> array = [];
  for (int i = 1; i <= 100; i++)
    array.add(i);

  final cache = Cache<List<int>>(
    data: array
  );

  print(cache.data.reduce((value, element) => value + element));

  final cache2 = Cache<List<String>>(
    data: ['a', 'b', 'c', 'd', 'e']
  );

  print(cache2.data.reduce((value, element) => value + element));
}