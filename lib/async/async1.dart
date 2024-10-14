import 'dart:async';

void async1() async {
  final res1 = await addNumbers(3, 8);
  final res2 = await addNumbers(1, 2);
  print('res1: $res1');
  print('res2: $res2');

  print('---- Stream ----');
  streamFunc1();
  streamFunc2();
  streamFunc3();
}

Future<int> addNumbers(int n1, int n2) async {
  print('$n1 + $n2 계산 시작');

  await Future.delayed(Duration(seconds: 2), () {
    print('계산 결과 -> $n1 + $n2 = ${n1 + n2}');
  });

  print('$n1 + $n2 코드 실행 끝');
  return n1 + n2;
}

void streamFunc1() {
  final controller = StreamController();
  final stream = controller.stream;

  final streamListener1 = stream.listen((event) {
    print('listen event: $event');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
}

void streamFunc2() {
  final controller = StreamController();
  final stream = controller.stream.asBroadcastStream();

  final streamListener1 = stream.listen((event) {
    print('listen 1 $event');
  });
  final streamListener2 = stream.listen((event) {
    print('listen 2 $event');
  });

  controller.sink.add(1);
  controller.sink.add(2);
  controller.sink.add(3);
  controller.sink.add(4);
}

// Stream을 반환하는 함수는 async* 로 선언한다.
Stream<String> calculate(int number) async* {
  for (int i = 0; i < 5; i++) {
    yield 'i = $i';
    await Future.delayed(const Duration(seconds: 1));
  }
}

void streamFunc3() {
  calculate(1).listen((event) {
    print('calc: $event');
  });
}