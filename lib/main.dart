// import 'package:flutter/material.dart';
import 'package:grammer/basis/variable.dart';
import 'package:grammer/collection/list.dart';
import 'package:grammer/collection/map.dart';
import 'package:grammer/collection/set.dart';
import 'package:grammer/basis/enum.dart';
import 'package:grammer/basis/operator.dart';
import 'package:grammer/control/control.dart';
import 'package:grammer/control/function.dart';
import 'package:grammer/control/lamda.dart';
import 'package:grammer/control/try_catch.dart';
import 'package:grammer/class/class1.dart';
import 'package:grammer/class/class2.dart';
import 'package:grammer/class/class3.dart';
import 'package:grammer/class/class4.dart';
import 'package:grammer/class/class5.dart';
import 'package:grammer/async/async1.dart';

void main() {
  print('\n\n---- basis ----');
  basis();

  print('\n\n---- variable ----');
  variable();

  print('\n\n---- list ----');
  list();

  print('\n\n---- map ----');
  map();

  print('\n\n---- set ----');
  set();

  print('\n\n---- enum ----');
  func_enum();

  print('\n\n---- operator ----');
  operator();

  print('\n\n---- control ----');
  control();

  print('\n\n---- function ----');
  print('func: ${func(3, 4)}');
  print('func: ${func2(a: 3, b: 4)}');
  print('func: ${func3(3)}');
  print('func: ${func4(a: 3)}');
  print('func: ${func5(3, b: 3)}');

  print('\n\n---- lamda ----');
  lamda();

  print('\n\n---- try catch ----');
  tryCatch();

  print('\n\n---- class1 ----');
  class1();

  print('\n\n---- class2 ----');
  class2();

  print('\n\n---- class3 ----');
  class3();

  print('\n\n---- class4 ----');
  class4();

  print('\n\n---- class5 ----');
  class5();

  print('\n\n---- async ----');
  async1();
}

void basis() {
  // 주석 1
  /**
   * 주석 2
   */
  /// 문서 주석

  print('hello world');
}



