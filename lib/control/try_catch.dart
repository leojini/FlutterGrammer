
void tryCatch() {
  try {
    final String name = '코드팩토리';

    throw Exception('이름이 잘못됐습니다!');

    print(name);
  } catch(e) {
    print(e);
  }
}