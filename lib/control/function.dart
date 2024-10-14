
// 위치 파라미터
int func(int a, int b) {
  return a + b;
}

// 네임드 파라미터
// - required 키워드는 매개변수가 null 값이 불가능한 타입일 경우 기본 값을 지정해 주거나 필수로 입력해야 한다는 의미이다.
int func2({
  required int a,
  required int b,
}) {
  return a + b;
}

// 위치 파라미터의 기본 파라미터 선언 방법. b값이 없을 경우 10을 기본 값으로 지정
int func3(int a, [int b = 10]) {
  return a + b;
}

// 네임드 파라미터의 기본 파라미터 선언 방법. required 생략 및 b값이 없을 경우 5을 기본 값으로 지정
int func4({ required int a, int b = 5 }) {
  return a + b;
}

// 위치 파라미터 + 네임드 파라미터
int func5(int a, { required int b, int c = 3 }) {
  return a + b + c;
}