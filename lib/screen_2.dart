import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_1/getx_controller.dart';



class Screen2 extends GetView{
  const Screen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final CountController countController = Get.put(CountController());

    return Scaffold(
      appBar: AppBar(title: const Text('screen2'),),
      
      body: Column(
        children: [

            ElevatedButton(
              onPressed: (){
                countController.increment();
              },
              child: const Text('press for plus'),
            ),

          ElevatedButton(
            onPressed: (){
              countController.decrement();
            },
            child: const Text('press for minus'),
          ),

          Obx(() =>
             Text('add ${countController.count1}'),
          ),
          
          Obx(() =>
              Text('add${countController.count2}')
          )

        ],
      ),
      
    );
  }
}
