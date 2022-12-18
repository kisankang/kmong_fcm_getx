import 'package:flutter/material.dart';
import 'package:get/get.dart';

class StateManagement1 extends StatelessWidget {
  StateManagement1({super.key});
  final Rx<int> state = 0.obs;
  final Rx<int> state2 = 0.obs;

  increment() {
    state.value++;
  }

  decrement() {
    state.value--;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("Getx"),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: decrement,
                icon: Icon(
                  Icons.arrow_downward,
                ),
              ),
              Obx(
                () => Text(
                  state.toString(),
                ),
              ),
              IconButton(
                onPressed: increment,
                icon: Icon(
                  Icons.arrow_upward,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
