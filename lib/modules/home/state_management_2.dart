import 'package:flutter/material.dart';

class StateManagement2 extends StatefulWidget {
  const StateManagement2({super.key});

  @override
  State<StateManagement2> createState() => _StateManagement2State();
}

class _StateManagement2State extends State<StateManagement2> {
  int state = 0;

  increment() {
    setState(() {
      state++;
    });
  }

  decrement() {
    setState(() {
      state--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.green,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Text("setState"),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              IconButton(
                onPressed: decrement,
                icon: Icon(
                  Icons.arrow_downward,
                ),
              ),
              Text(
                state.toString(),
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
