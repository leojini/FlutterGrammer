import 'package:grammer/class/class1.dart';

class Student extends Person {
  final int number;
  Student(super.name, super.idNumber, this.number);

  @override
  void sayName() {
    print('저는 학생 ${name}입니다.');
    print('학생 id 번호는 ${idNumber}입니다.');
    print('학생 나이는 ${age}입니다.');
  }

  void sayNumber() {
    print('학생 번호는 ${number}입니다.');
  }
}

void class2() {
  Student st = Student('민수', 'xx33kk', 10);
  st.age = 8;
  st.sayName();
  st.sayNumber();
}