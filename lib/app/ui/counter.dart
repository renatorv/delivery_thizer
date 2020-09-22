import 'package:delivery_thizer/app/controller/counter_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../ui/layout.dart';

class Counter extends StatelessWidget {
  final CounterController controller = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Layout.render(
      content: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Vc clicou este número de vezes.'),
            GetX<CounterController>(
              builder: (counter) {
                return Text(
                  '${counter.valor.string}',
                  style: TextStyle(fontSize: 48),
                );
              },
            ),
          ],
        ),
      ),
      fab: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          FloatingActionButton(
            heroTag: 'x',
            onPressed: () => controller.increment(),
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => controller.decrement(),
            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
