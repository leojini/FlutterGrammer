
void set() {
  Set<String> blackPink = {'kkk', 'qqq', '123', 'xxx', '234k'};
  print(blackPink);
  print(blackPink.contains('로제'));
  print(blackPink.toList());

  List<String> blackPink2 = ['a', 'b', 'c', 'd', 'a'];
  print(Set.from(blackPink2));
}