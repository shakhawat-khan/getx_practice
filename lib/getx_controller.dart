
import 'package:get/get.dart';

class CountController extends  GetxController {

  final  count1 = 0.obs;
  final count2 = 0.obs;

  void increment(){
    count1.value++;
  }


  void decrement(){
    count2.value++;

  }


}
