import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:practice_1/screen_2.dart';




class Screen1 extends StatelessWidget {
  const Screen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hello'),
      ),

      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text('data'),

          ElevatedButton(onPressed: (){

            Get.to(
              duration:const Duration(seconds: 2),
                curve: Curves.ease,

                arguments: 'this is argument',
                (){
                  return const Screen2();
                }
            );

            }, child: const Text('screen 2')),
        ],
      )

    );
  }
}
