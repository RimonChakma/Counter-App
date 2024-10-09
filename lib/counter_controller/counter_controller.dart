import 'package:get/get.dart';

class CounterController extends GetxController{
  
  RxInt counter = RxInt(0);

  increment (){
   
   counter.value ++;
   update();
  }


  decrement (){
   
   counter.value --;
   update();
  }

}