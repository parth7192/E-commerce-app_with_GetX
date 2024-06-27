import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class CounterController extends GetxController {
  int count = 0;

  void increment() {
    count = ++count;
    update();
  }

  void decrement() {
    count = --count;
    update();
  }
}
