import 'package:grammer/basis/enum.dart';

void control() {
  print("\n---- control 1, 2 ----");
  control1();
  control2();

  print("\n---- loop 1, 2 ----");
  loop1();
  loop2();
}

void control1() {
  int no = 3;

  if (no % 3 == 0) {
    print("0");
  } else if (no % 3 == 1) {
    print("1");
  } else {
    print("else");
  }
}

void control2() {
  Grade grade = Grade.senior;
  switch (grade) {
    case Grade.beginner:
      print("beginner");
      break;
    case Grade.intermediate:
      print("intermediate");
      break;
    case Grade.senior:
      print("senior");
      break;
  }
  print('Grade values: ${Grade.values}');
}

void loop1() {
  for (int i = 0; i < 5; i++) {
    print('i: ${i}');
  }

  List<int> list = [1, 3, 5, 9];
  for (int no in list) {
    print('no: ${no}');
  }
}

void loop2() {
  int total = 0;
  while (total < 5) {
    total += 1;
  }
  print('total: ${total}');
}