import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CounterResult extends StatelessWidget {

  const CounterResult({super.key,  });

  @override
  Widget build(BuildContext context) {

   final arg = Get.arguments;

    
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Result"
        ),
      ),

      body: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text("name :${arg["name"]}\nclass :${arg["class"]}", style: TextStyle(
            fontSize: 40
          ),)),
           Icon(arg["isPassed"] ? Icons.check_circle : Icons.error_rounded,  color: arg["isPassed"]? Colors.blue:Colors.red ,),
           SizedBox(
            height: 10,
           ),
           ElevatedButton(onPressed: (){

            Get.back();
             
           }, child: Text("Back to counter"))
        ],
      ),
    );
  }
}