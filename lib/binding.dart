import 'package:get/get.dart';
import 'package:practice_1/getx_controller.dart';

class CounterBinding extends Bindings{
  @override
  void dependencies(){
    Get.lazyPut(() => CountController());
  }
}