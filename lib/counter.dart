
import 'package:counter_app/counter_controller/counter_controller.dart';
import 'package:counter_app/counter_controller/counter_result.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {

    
    final controller = Get.put(CounterController());

    

    return Scaffold(
      appBar: AppBar(
        title: Text("Counter App",style: TextStyle(
          fontSize: 30,
         
        ),),
      ),

      body: Center(
        child: Column(
       
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           Obx(()=>  Text(controller.counter.value.toString(),style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.bold
            ),),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(style: IconButton.styleFrom(
                  backgroundColor: Colors.red
                ), onPressed: (){
                  controller.decrement();
                }, icon: Icon(Icons.remove,color: Colors.white,)),
                  IconButton(style: IconButton.styleFrom(
                    backgroundColor: Colors.red,
                  ), onPressed: (){
                    controller.increment();
                  }, icon: Icon(Icons.add,color: Colors.white,)),
              ],
            ),
            
            ElevatedButton(onPressed: (){
              controller.counter.value = 0;
             // Get.snackbar(
               // "Complite",
                // "your reset is complite",
               //  snackPosition: SnackPosition.BOTTOM,
               //  colorText: Colors.white,
               //  backgroundColor: Colors.black,

               Get.defaultDialog(
                title: "Dailouge",
                content: Text("This is a context text"),
                textCancel: "cencel",
                textConfirm: "confirm",
                onConfirm: () {

                  print("confirm you process");
                },
               );
                
                 
                 
                // );
            }, child: Text("Reset")),

            SizedBox(
              height: 10,
            ),

            ElevatedButton(onPressed: (){
              Get.offAll(()=>CounterResult(),
              arguments: {
                "name":"Rimon Chakma",
                "class":9,
                "isPassed": false
              }
              );
            }, child: Text("Cheak Result",)),

           
          ],
        ),
      ),


    );
  }
}