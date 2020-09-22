import 'package:get/state_manager.dart';

class CounterController extends GetxController {
  final valor = 0.obs;

  increment() {
    valor.value++;
  }

  decrement() {
    valor.value--;
  }
}
