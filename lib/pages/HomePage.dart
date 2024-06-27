import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_app/controller/product_controller.dart';
import 'package:getx_app/modal/product_modal.dart';

import '../controller/counter_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // CounterController c = Get.put(CounterController());

    ProductController p = Get.put(ProductController());

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Counter App GetX"),
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: p.allProduct.length,
              itemBuilder: (context, index) {
                Product product = p.allProduct[index];
                return ListTile(
                  title: Text(p.allProduct[index].title),
                );
              }),
        ),
      ),
    );
  }
}
