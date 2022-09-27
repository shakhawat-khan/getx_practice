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

          ElevatedButton(onPressed: (){
            Get.bottomSheet(
              Container(

                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(title: Text("Option 1"),
                      trailing: Icon(Icons.access_alarms),),
                    ListTile(title: Text("Option 2"),
                      trailing: Icon(Icons.ac_unit),),
                    ListTile(title: Text("Option 3"),
                      trailing: Icon(Icons.present_to_all_sharp),),
                    ListTile(title: Text("Option 4"),
                      trailing: Icon(Icons.keyboard),),
                  ],
                ),
              ),
              isDismissible: false,
              enableDrag: true,

            );
          }, child: Text('bottom sheet text')),
        ],
      )

    );
  }
}
