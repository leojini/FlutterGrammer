
void lamda() {
  List<int> numbers = [1, 2, 3, 4, 5];
  final all = numbers.reduce((value, element) {
    return value + element;
  });
  final all2 = numbers.reduce((value, element) => value + element);
  print('all: ${all}');
  print('all2: ${all2}');
}