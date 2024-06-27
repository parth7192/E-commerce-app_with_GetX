import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'counter_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    CounterController c = Get.put(CounterController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Counter App GetX"),
      ),
      body: Center(
        child: Column(
          children: [
            GetBuilder<CounterController>(
              builder: (get) => Text("${get.count}"),
            ),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton(
            onPressed: () {
              c.increment();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(
            width: 10,
          ),
          FloatingActionButton(
            onPressed: () {
              c.decrement();
            },
            child: const Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
